/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
    @NamedQuery(name = "Karyawan.findAll", query = "SELECT k FROM Karyawan k")
    , @NamedQuery(name = "Karyawan.findByIdKaryawan", query = "SELECT k FROM Karyawan k WHERE k.idKaryawan = :idKaryawan")
    , @NamedQuery(name = "Karyawan.findByNamaKaryawan", query = "SELECT k FROM Karyawan k WHERE k.namaKaryawan = :namaKaryawan")
    , @NamedQuery(name = "Karyawan.findByEmail", query = "SELECT k FROM Karyawan k WHERE k.email = :email")
    , @NamedQuery(name = "Karyawan.findByAlamat", query = "SELECT k FROM Karyawan k WHERE k.alamat = :alamat")
    , @NamedQuery(name = "Karyawan.findByJatahCuti", query = "SELECT k FROM Karyawan k WHERE k.jatahCuti = :jatahCuti")
    , @NamedQuery(name = "Karyawan.findBySisaCuti", query = "SELECT k FROM Karyawan k WHERE k.sisaCuti = :sisaCuti")
    , @NamedQuery(name = "Karyawan.findByPassword", query = "SELECT k FROM Karyawan k WHERE k.password = :password")})
public class Karyawan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_KARYAWAN")
    private String idKaryawan;
    @Column(name = "NAMA_KARYAWAN")
    private String namaKaryawan;
    @Basic(optional = false)
    @Column(name = "EMAIL")
    private String email;
    @Column(name = "ALAMAT")
    private String alamat;
    @Basic(optional = false)
    @Column(name = "JATAH_CUTI")
    private BigInteger jatahCuti;
    @Column(name = "SISA_CUTI")
    private BigInteger sisaCuti;
    @Basic(optional = false)
    @Column(name = "PASSWORD")
    private String password;
    @OneToMany(mappedBy = "idKaryawan", fetch = FetchType.LAZY)
    private List<Dtcuti> dtcutiList;
    @OneToMany(mappedBy = "idKaryawan", fetch = FetchType.LAZY)
    private List<Dtcutikhusus> dtcutikhususList;
    @JoinColumn(name = "ID_JABATAN", referencedColumnName = "ID_JABATAN")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Jabatan idJabatan;
    @JoinColumn(name = "ID_ROLE", referencedColumnName = "ID_ROLE")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Role idRole;

    public Karyawan(String idKaryawan, String namaKaryawan, String email, String alamat, BigInteger jatahCuti, BigInteger sisaCuti, String password, Jabatan idJabatan, Role idRole) {
        this.idKaryawan = idKaryawan;
        this.namaKaryawan = namaKaryawan;
        this.email = email;
        this.alamat = alamat;
        this.jatahCuti = jatahCuti;
        this.sisaCuti = sisaCuti;
        this.password = password;
        this.idJabatan = idJabatan;
        this.idRole = idRole;
    }

    public Karyawan() {
    }

    public Karyawan(String idKaryawan) {
        this.idKaryawan = idKaryawan;
    }

    public Karyawan(String idKaryawan, String email, BigInteger jatahCuti, String password) {
        this.idKaryawan = idKaryawan;
        this.email = email;
        this.jatahCuti = jatahCuti;
        this.password = password;
    }

    public String getIdKaryawan() {
        return idKaryawan;
    }

    public void setIdKaryawan(String idKaryawan) {
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

    public BigInteger getSisaCuti() {
        return sisaCuti;
    }

    public void setSisaCuti(BigInteger sisaCuti) {
        this.sisaCuti = sisaCuti;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @XmlTransient
    public List<Dtcuti> getDtcutiList() {
        return dtcutiList;
    }

    public void setDtcutiList(List<Dtcuti> dtcutiList) {
        this.dtcutiList = dtcutiList;
    }

    @XmlTransient
    public List<Dtcutikhusus> getDtcutikhususList() {
        return dtcutikhususList;
    }

    public void setDtcutikhususList(List<Dtcutikhusus> dtcutikhususList) {
        this.dtcutikhususList = dtcutikhususList;
    }

    public Jabatan getIdJabatan() {
        return idJabatan;
    }

    public void setIdJabatan(Jabatan idJabatan) {
        this.idJabatan = idJabatan;
    }

    public Role getIdRole() {
        return idRole;
    }

    public void setIdRole(Role idRole) {
        this.idRole = idRole;
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
        return "entities.Karyawan[ idKaryawan=" + idKaryawan + " ]";
    }
    
}
