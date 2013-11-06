// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ibps.demo.web;

import com.ibps.demo.Examl;
import com.ibps.demo.User;
import com.ibps.demo.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Examl, String> ApplicationConversionServiceFactoryBean.getExamlToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.ibps.demo.Examl, java.lang.String>() {
            public String convert(Examl examl) {
                return new StringBuilder().append(examl.getQuestin()).append(' ').append(examl.getA()).append(' ').append(examl.getB()).append(' ').append(examl.getC()).toString();
            }
        };
    }
    
    public Converter<Integer, Examl> ApplicationConversionServiceFactoryBean.getIdToExamlConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.ibps.demo.Examl>() {
            public com.ibps.demo.Examl convert(java.lang.Integer id) {
                return Examl.findExaml(id);
            }
        };
    }
    
    public Converter<String, Examl> ApplicationConversionServiceFactoryBean.getStringToExamlConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.ibps.demo.Examl>() {
            public com.ibps.demo.Examl convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Examl.class);
            }
        };
    }
    
    public Converter<User, String> ApplicationConversionServiceFactoryBean.getUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.ibps.demo.User, java.lang.String>() {
            public String convert(User user) {
                return new StringBuilder().append(user.getUsername()).append(' ').append(user.getPassword()).append(' ').append(user.getType()).append(' ').append(user.getExtra()).toString();
            }
        };
    }
    
    public Converter<Integer, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.ibps.demo.User>() {
            public com.ibps.demo.User convert(java.lang.Integer id) {
                return User.findUser(id);
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getStringToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.ibps.demo.User>() {
            public com.ibps.demo.User convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), User.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getExamlToStringConverter());
        registry.addConverter(getIdToExamlConverter());
        registry.addConverter(getStringToExamlConverter());
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getStringToUserConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}