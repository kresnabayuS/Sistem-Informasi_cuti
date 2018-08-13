/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Simbok_pc
 */
@Entity
@Table(name = "DTCUTI")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dtcuti.findAll", query = "SELECT d FROM Dtcuti d")
    , @NamedQuery(name = "Dtcuti.findByIdDtcuti", query = "SELECT d FROM Dtcuti d WHERE d.idDtcuti = :idDtcuti")
    , @NamedQuery(name = "Dtcuti.findByStatus", query = "SELECT d FROM Dtcuti d WHERE d.status = :status")
    , @NamedQuery(name = "Dtcuti.findByLamaCuti", query = "SELECT d FROM Dtcuti d WHERE d.lamaCuti = :lamaCuti")})
public class Dtcuti implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_DTCUTI")
    private String idDtcuti;
    @Column(name = "STATUS")
    private String status;
    @Basic(optional = false)
    @Column(name = "LAMA_CUTI")
    private BigInteger lamaCuti;
    @JoinColumn(name = "ID_CUTI", referencedColumnName = "ID_CUTI")
    @ManyToOne(fetch = FetchType.LAZY)
    private Cuti idCuti;
    @JoinColumn(name = "ID_KARYAWAN", referencedColumnName = "ID_KARYAWAN")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Karyawan idKaryawan;

    public Dtcuti() {
    }

    public Dtcuti(String idDtcuti, String status, BigInteger lamaCuti, Cuti idCuti, Karyawan idKaryawan) {
        this.idDtcuti = idDtcuti;
        this.status = status;
        this.lamaCuti = lamaCuti;
        this.idCuti = idCuti;
        this.idKaryawan = idKaryawan;
    }
    
    
    
    public Dtcuti(String idDtcuti) {
        this.idDtcuti = idDtcuti;
    }

    public Dtcuti(String idDtcuti, BigInteger lamaCuti) {
        this.idDtcuti = idDtcuti;
        this.lamaCuti = lamaCuti;
    }

    public String getIdDtcuti() {
        return idDtcuti;
    }

    public void setIdDtcuti(String idDtcuti) {
        this.idDtcuti = idDtcuti;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public BigInteger getLamaCuti() {
        return lamaCuti;
    }

    public void setLamaCuti(BigInteger lamaCuti) {
        this.lamaCuti = lamaCuti;
    }

    public Cuti getIdCuti() {
        return idCuti;
    }

    public void setIdCuti(Cuti idCuti) {
        this.idCuti = idCuti;
    }

    public Karyawan getIdKaryawan() {
        return idKaryawan;
    }

    public void setIdKaryawan(Karyawan idKaryawan) {
        this.idKaryawan = idKaryawan;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDtcuti != null ? idDtcuti.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dtcuti)) {
            return false;
        }
        Dtcuti other = (Dtcuti) object;
        if ((this.idDtcuti == null && other.idDtcuti != null) || (this.idDtcuti != null && !this.idDtcuti.equals(other.idDtcuti))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Dtcuti[ idDtcuti=" + idDtcuti + " ]";
    }
    
}
