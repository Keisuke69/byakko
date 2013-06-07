// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.genbu.controller;

import org.genbu.controller.ApplicationConversionServiceFactoryBean;
import org.genbu.model.Company;
import org.genbu.model.Person;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Company, String> ApplicationConversionServiceFactoryBean.getCompanyToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.genbu.model.Company, java.lang.String>() {
            public String convert(Company company) {
                return new StringBuilder().append(company.getName()).append(' ').append(company.getAddress()).toString();
            }
        };
    }
    
    public Converter<Long, Company> ApplicationConversionServiceFactoryBean.getIdToCompanyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.genbu.model.Company>() {
            public org.genbu.model.Company convert(java.lang.Long id) {
                return Company.findCompany(id);
            }
        };
    }
    
    public Converter<String, Company> ApplicationConversionServiceFactoryBean.getStringToCompanyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.genbu.model.Company>() {
            public org.genbu.model.Company convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Company.class);
            }
        };
    }
    
    public Converter<Person, String> ApplicationConversionServiceFactoryBean.getPersonToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.genbu.model.Person, java.lang.String>() {
            public String convert(Person person) {
                return new StringBuilder().append(person.getName()).append(' ').append(person.getAge()).toString();
            }
        };
    }
    
    public Converter<Long, Person> ApplicationConversionServiceFactoryBean.getIdToPersonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.genbu.model.Person>() {
            public org.genbu.model.Person convert(java.lang.Long id) {
                return Person.findPerson(id);
            }
        };
    }
    
    public Converter<String, Person> ApplicationConversionServiceFactoryBean.getStringToPersonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.genbu.model.Person>() {
            public org.genbu.model.Person convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Person.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCompanyToStringConverter());
        registry.addConverter(getIdToCompanyConverter());
        registry.addConverter(getStringToCompanyConverter());
        registry.addConverter(getPersonToStringConverter());
        registry.addConverter(getIdToPersonConverter());
        registry.addConverter(getStringToPersonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}