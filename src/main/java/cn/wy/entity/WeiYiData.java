package cn.wy.entity;

import javax.persistence.*;

@Table(name = "wei_yi_data")
public class WeiYiData {
    /**
     * 参数值
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 参数名
     */
    @Column(name = "param_name")
    private String paramName;

    /**
     * 参数值
     */
    @Column(name = "param_value")
    private String paramValue;

    /**
     * 备注
     */
    private String remark;

    /**
     * 获取参数值
     *
     * @return id - 参数值
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置参数值
     *
     * @param id 参数值
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取参数名
     *
     * @return param_name - 参数名
     */
    public String getParamName() {
        return paramName;
    }

    /**
     * 设置参数名
     *
     * @param paramName 参数名
     */
    public void setParamName(String paramName) {
        this.paramName = paramName;
    }

    /**
     * 获取参数值
     *
     * @return param_value - 参数值
     */
    public String getParamValue() {
        return paramValue;
    }

    /**
     * 设置参数值
     *
     * @param paramValue 参数值
     */
    public void setParamValue(String paramValue) {
        this.paramValue = paramValue;
    }

    /**
     * 获取备注
     *
     * @return remark - 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置备注
     *
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "id:"+id+",paramName:"+paramName+",paramValue:"+paramValue+",remark:"+remark;
    }
}