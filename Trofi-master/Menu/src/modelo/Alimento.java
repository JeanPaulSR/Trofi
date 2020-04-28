package modelo;

public class Alimento {
	private String nombre;
	private String descripcion;
	private double costo;
	private int id;
	private int cat_id;
	
	public Alimento(String nombre, String descripcion, double costo , int id, int cat_id) {
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.costo = costo;
		this.id = id;
		this.cat_id = cat_id;
	}
	
	public String getNombre() {
		return this.nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getDescripcion() {
		return this.descripcion;
	}
	
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public double getCosto() {
		return this.costo;
	}
	
	public void setCosto(double costo) {
		this.costo = costo;
	}
	
	public int getId() {
		return this.id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getCat() {
		return this.cat_id;
	}
	
	public void setCat(int cat_id) {
		this.cat_id = cat_id;
	}
	
	public boolean equals(Alimento compara) {
		return this.id == compara.id;
	}
}
