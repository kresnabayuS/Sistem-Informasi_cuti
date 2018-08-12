/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author kresna bayu
 */
@Entity
@Table(name = "KARYAWAN")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Karyawan_1.findAll", query = "SELECT k FROM Karyawan_1 k")
    , @NamedQuery(name = "Karyawan_1.findByIdKaryawan", query = "SELECT k FROM Karyawan_1 k WHERE k.idKaryawan = :idKaryawan")
    , @NamedQuery(name = "Karyawan_1.findByNamaKaryawan", query = "SELECT k FROM Karyawan_1 k WHERE k.namaKaryawan = :namaKaryawan")
    , @NamedQuery(name = "Karyawan_1.findByEmail", query = "SELECT k FROM Karyawan_1 k WHERE k.email = :email")
    , @NamedQuery(name = "Karyawan_1.findByAlamat", query = "SELECT k FROM Karyawan_1 k WHERE k.alamat = :alamat")
    , @NamedQuery(name = "Karyawan_1.findByJatahCuti", query = "SELECT k FROM Karyawan_1 k WHERE k.jatahCuti = :jatahCuti")
    , @NamedQuery(name = "Karyawan_1.findByIdRole", query = "SELECT k FROM Karyawan_1 k WHERE k.idRole = :idRole")
    , @NamedQuery(name = "Karyawan_1.findBySisaCuti", query = "SELECT k FROM Karyawan_1 k WHERE k.sisaCuti = :sisaCuti")})
public class Karyawan implements Serializable {

    private static final long serialVersionUID = 1L;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Id
    @Basic(optional = false)
    @Column(name = "ID_KARYAWAN")
    private BigDecimal idKaryawan;
    @Column(name = "NAMA_KARYAWAN")
    private String namaKaryawan;
    @Column(name = "EMAIL")
    private String email;
    @Column(name = "ALAMAT")
    private String alamat;
    @Basic(optional = false)
    @Column(name = "JATAH_CUTI")
    private BigInteger jatahCuti;
    @Basic(optional = false)
    @Column(name = "ID_ROLE")
    private String idRole;
    @Column(name = "SISA_CUTI")
    private BigInteger sisaCuti;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idKaryawan")
    private List<Dtcuti> dtcutiList;
    @JoinColumn(name = "ID_JABATAN", referencedColumnName = "ID_JABATAN")
    @ManyToOne(optional = false)
    private Jabatan idJabatan;

    public Karyawan(BigDecimal idKaryawan, String namaKaryawan, String email, String alamat, BigInteger jatahCuti, String idRole, BigInteger sisaCuti, List<Dtcuti> dtcutiList, Jabatan idJabatan) {
        this.idKaryawan = idKaryawan;
        this.namaKaryawan = namaKaryawan;
        this.email = email;
        this.alamat = alamat;
        this.jatahCuti = jatahCuti;
        this.idRole = idRole;
        this.sisaCuti = sisaCuti;
        this.dtcutiList = dtcutiList;
        this.idJabatan = idJabatan;
    }

    public Karyawan() {
    }

    public Karyawan(BigDecimal idKaryawan) {
        this.idKaryawan = idKaryawan;
    }

    public Karyawan(BigDecimal idKaryawan, BigInteger jatahCuti, String idRole) {
        this.idKaryawan = idKaryawan;
        this.jatahCuti = jatahCuti;
        this.idRole = idRole;
    }

    public BigDecimal getIdKaryawan() {
        return idKaryawan;
    }

    public void setIdKaryawan(BigDecimal idKaryawan) {
        this.idKaryawan = idKaryawan;
    }

    public String getNamaKaryawan() {
        return namaKaryawan;
    }

    public void setNamaKaryawan(String namaKaryawan) {
        this.namaKaryawan = namaKaryawan;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public BigInteger getJatahCuti() {
        return jatahCuti;
    }

    public void setJatahCuti(BigInteger jatahCuti) {
        this.jatahCuti = jatahCuti;
    }

    public String getIdRole() {
        return idRole;
    }

    public void setIdRole(String idRole) {
        this.idRole = idRole;
    }

    public BigInteger getSisaCuti() {
        return sisaCuti;
    }

    public void setSisaCuti(BigInteger sisaCuti) {
        this.sisaCuti = sisaCuti;
    }

    @XmlTransient
    public List<Dtcuti> getDtcutiList() {
        return dtcutiList;
    }

    public void setDtcutiList(List<Dtcuti> dtcutiList) {
        this.dtcutiList = dtcutiList;
    }

    public Jabatan getIdJabatan() {
        return idJabatan;
    }

    public void setIdJabatan(Jabatan idJabatan) {
        this.idJabatan = idJabatan;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idKaryawan != null ? idKaryawan.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Karyawan)) {
            return false;
        }
        Karyawan other = (Karyawan) object;
        if ((this.idKaryawan == null && other.idKaryawan != null) || (this.idKaryawan != null && !this.idKaryawan.equals(other.idKaryawan))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Karyawan_1[ idKaryawan=" + idKaryawan + " ]";
    }
    
}
