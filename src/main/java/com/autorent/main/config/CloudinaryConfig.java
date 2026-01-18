package com.autorent.main.config;

import com.cloudinary.Cloudinary;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CloudinaryConfig {

    @Value("${cloudinary.cloud-name:default}")
    private String cloudName;

    @Value("${cloudinary.api-key:default}")
    private String apiKey;

    @Value("${cloudinary.api-secret:default}")
    private String apiSecret;

    @Bean
    public Cloudinary getCloudinary() {
        Map<String, String> config = new HashMap<>();
        config.put("cloud_name", cloudName);
        config.put("api_key", apiKey);
        config.put("api_secret", apiSecret);
        // Retorna la instancia de Cloudinary con las credenciales
        return new Cloudinary(config);
    }
}