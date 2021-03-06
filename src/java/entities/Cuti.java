/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author kresna bayu
 */
@Entity
@Table(name = "CUTI")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cuti.findAll", query = "SELECT c FROM Cuti c")
    , @NamedQuery(name = "Cuti.findByIdCuti", query = "SELECT c FROM Cuti c WHERE c.idCuti = :idCuti")
    , @NamedQuery(name = "Cuti.findByTanggalAwal", query = "SELECT c FROM Cuti c WHERE c.tanggalAwal = :tanggalAwal")
    , @NamedQuery(name = "Cuti.findByTanggalAkhir", query = "SELECT c FROM Cuti c WHERE c.tanggalAkhir = :tanggalAkhir")
    , @NamedQuery(name = "Cuti.findByKeterangan", query = "SELECT c FROM Cuti c WHERE c.keterangan = :keterangan")})
public class Cuti implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_CUTI")
    private String idCuti;
    @Basic(optional = false)
    @Column(name = "TANGGAL_AWAL")
    @Temporal(TemporalType.TIMESTAMP)
    private Date tanggalAwal;
    @Basic(optional = false)
    @Column(name = "TANGGAL_AKHIR")
    @Temporal(TemporalType.TIMESTAMP)
    private Date tanggalAkhir;
    @Column(name = "KETERANGAN")
    private String keterangan;
    @OneToMany(mappedBy = "idCuti", fetch = FetchType.LAZY)
    private List<Dtcuti> dtcutiList;

    public Cuti(String idCuti, Date tanggalAwal, Date tanggalAkhir, String keterangan) {
        this.idCuti = idCuti;
        this.tanggalAwal = tanggalAwal;
        this.tanggalAkhir = tanggalAkhir;
        this.keterangan = keterangan;
    }

    public Cuti() {
    }

    public Cuti(String idCuti) {
        this.idCuti = idCuti;
    }

    public Cuti(String idCuti, Date tanggalAwal, Date tanggalAkhir) {
        this.idCuti = idCuti;
        this.tanggalAwal = tanggalAwal;
        this.tanggalAkhir = tanggalAkhir;
    }

    public String getIdCuti() {
        return idCuti;
    }

    public void setIdCuti(String idCuti) {
        this.idCuti = idCuti;
    }

    public Date getTanggalAwal() {
        return tanggalAwal;
    }

    public void setTanggalAwal(Date tanggalAwal) {
        this.tanggalAwal = tanggalAwal;
    }

    public Date getTanggalAkhir() {
        return tanggalAkhir;
    }

    public void setTanggalAkhir(Date tanggalAkhir) {
        this.tanggalAkhir = tanggalAkhir;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }

    @XmlTransient
    public List<Dtcuti> getDtcutiList() {
        return dtcutiList;
    }

    public void setDtcutiList(List<Dtcuti> dtcutiList) {
        this.dtcutiList = dtcutiList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCuti != null ? idCuti.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cuti)) {
            return false;
        }
        Cuti other = (Cuti) object;
        if ((this.idCuti == null && other.idCuti != null) || (this.idCuti != null && !this.idCuti.equals(other.idCuti))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Cuti[ idCuti=" + idCuti + " ]";
    }
    
}
