// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ibps.demo;

import com.ibps.demo.Examl;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Examl_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Examl.entityManager;
    
    public static final EntityManager Examl.entityManager() {
        EntityManager em = new Examl().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Examl.countExamls() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Examl o", Long.class).getSingleResult();
    }
    
    public static List<Examl> Examl.findAllExamls() {
        return entityManager().createQuery("SELECT o FROM Examl o", Examl.class).getResultList();
    }
    
    public static Examl Examl.findExaml(Integer questionId) {
        if (questionId == null) return null;
        return entityManager().find(Examl.class, questionId);
    }
    
    public static List<Examl> Examl.findExamlEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Examl o", Examl.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Examl.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Examl.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Examl attached = Examl.findExaml(this.questionId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Examl.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Examl.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Examl Examl.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Examl merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}