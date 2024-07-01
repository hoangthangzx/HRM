package quanlynhansu.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import quanlynhansu.model.entity.Canbo;
import quanlynhansu.repository.ICanBoRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private ICanBoRepository canBoRepository;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Canbo canbo = canBoRepository.findByTen(username);
        if (canbo == null) {
            throw new UsernameNotFoundException("User not found");
        }
        // Authorities for the user
        List<SimpleGrantedAuthority> authorities = Stream.of(canbo.getPk())
                .map(role -> new SimpleGrantedAuthority(String.valueOf(role)))
                .collect(Collectors.toList());

        // Role for the user (as a single role example)
        String role = canbo.getChucDanh();
        return User.withUsername(canbo.getTen())
                   .password(canbo.getSoHieu())
                   .roles(role) // Setting roles separately
                   .authorities(authorities) // Setting authorities separately
                   .build();
    }



}
