package bean;

/**
 * Created by ASUS on 2017/7/11.
 */
public class Savingaccount {
	private int id;
	private int pid;
	private double banlance;
	private double interestRate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public double getBanlance() {
		return banlance;
	}

	public void setBanlance(double banlance) {
		this.banlance = banlance;
	}

	public double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
}
