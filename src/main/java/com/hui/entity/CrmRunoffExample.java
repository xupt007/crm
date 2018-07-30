package com.hui.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CrmRunoffExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CrmRunoffExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andRunoffidIsNull() {
            addCriterion("runoffId is null");
            return (Criteria) this;
        }

        public Criteria andRunoffidIsNotNull() {
            addCriterion("runoffId is not null");
            return (Criteria) this;
        }

        public Criteria andRunoffidEqualTo(String value) {
            addCriterion("runoffId =", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidNotEqualTo(String value) {
            addCriterion("runoffId <>", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidGreaterThan(String value) {
            addCriterion("runoffId >", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidGreaterThanOrEqualTo(String value) {
            addCriterion("runoffId >=", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidLessThan(String value) {
            addCriterion("runoffId <", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidLessThanOrEqualTo(String value) {
            addCriterion("runoffId <=", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidLike(String value) {
            addCriterion("runoffId like", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidNotLike(String value) {
            addCriterion("runoffId not like", value, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidIn(List<String> values) {
            addCriterion("runoffId in", values, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidNotIn(List<String> values) {
            addCriterion("runoffId not in", values, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidBetween(String value1, String value2) {
            addCriterion("runoffId between", value1, value2, "runoffid");
            return (Criteria) this;
        }

        public Criteria andRunoffidNotBetween(String value1, String value2) {
            addCriterion("runoffId not between", value1, value2, "runoffid");
            return (Criteria) this;
        }

        public Criteria andStudentidIsNull() {
            addCriterion("studentId is null");
            return (Criteria) this;
        }

        public Criteria andStudentidIsNotNull() {
            addCriterion("studentId is not null");
            return (Criteria) this;
        }

        public Criteria andStudentidEqualTo(String value) {
            addCriterion("studentId =", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidNotEqualTo(String value) {
            addCriterion("studentId <>", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidGreaterThan(String value) {
            addCriterion("studentId >", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidGreaterThanOrEqualTo(String value) {
            addCriterion("studentId >=", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidLessThan(String value) {
            addCriterion("studentId <", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidLessThanOrEqualTo(String value) {
            addCriterion("studentId <=", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidLike(String value) {
            addCriterion("studentId like", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidNotLike(String value) {
            addCriterion("studentId not like", value, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidIn(List<String> values) {
            addCriterion("studentId in", values, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidNotIn(List<String> values) {
            addCriterion("studentId not in", values, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidBetween(String value1, String value2) {
            addCriterion("studentId between", value1, value2, "studentid");
            return (Criteria) this;
        }

        public Criteria andStudentidNotBetween(String value1, String value2) {
            addCriterion("studentId not between", value1, value2, "studentid");
            return (Criteria) this;
        }

        public Criteria andStaffidIsNull() {
            addCriterion("staffId is null");
            return (Criteria) this;
        }

        public Criteria andStaffidIsNotNull() {
            addCriterion("staffId is not null");
            return (Criteria) this;
        }

        public Criteria andStaffidEqualTo(String value) {
            addCriterion("staffId =", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidNotEqualTo(String value) {
            addCriterion("staffId <>", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidGreaterThan(String value) {
            addCriterion("staffId >", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidGreaterThanOrEqualTo(String value) {
            addCriterion("staffId >=", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidLessThan(String value) {
            addCriterion("staffId <", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidLessThanOrEqualTo(String value) {
            addCriterion("staffId <=", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidLike(String value) {
            addCriterion("staffId like", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidNotLike(String value) {
            addCriterion("staffId not like", value, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidIn(List<String> values) {
            addCriterion("staffId in", values, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidNotIn(List<String> values) {
            addCriterion("staffId not in", values, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidBetween(String value1, String value2) {
            addCriterion("staffId between", value1, value2, "staffid");
            return (Criteria) this;
        }

        public Criteria andStaffidNotBetween(String value1, String value2) {
            addCriterion("staffId not between", value1, value2, "staffid");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNull() {
            addCriterion("createDate is null");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNotNull() {
            addCriterion("createDate is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedateEqualTo(Date value) {
            addCriterion("createDate =", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotEqualTo(Date value) {
            addCriterion("createDate <>", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThan(Date value) {
            addCriterion("createDate >", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThanOrEqualTo(Date value) {
            addCriterion("createDate >=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThan(Date value) {
            addCriterion("createDate <", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThanOrEqualTo(Date value) {
            addCriterion("createDate <=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateIn(List<Date> values) {
            addCriterion("createDate in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotIn(List<Date> values) {
            addCriterion("createDate not in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateBetween(Date value1, Date value2) {
            addCriterion("createDate between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotBetween(Date value1, Date value2) {
            addCriterion("createDate not between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andIsrefundIsNull() {
            addCriterion("isRefund is null");
            return (Criteria) this;
        }

        public Criteria andIsrefundIsNotNull() {
            addCriterion("isRefund is not null");
            return (Criteria) this;
        }

        public Criteria andIsrefundEqualTo(String value) {
            addCriterion("isRefund =", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundNotEqualTo(String value) {
            addCriterion("isRefund <>", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundGreaterThan(String value) {
            addCriterion("isRefund >", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundGreaterThanOrEqualTo(String value) {
            addCriterion("isRefund >=", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundLessThan(String value) {
            addCriterion("isRefund <", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundLessThanOrEqualTo(String value) {
            addCriterion("isRefund <=", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundLike(String value) {
            addCriterion("isRefund like", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundNotLike(String value) {
            addCriterion("isRefund not like", value, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundIn(List<String> values) {
            addCriterion("isRefund in", values, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundNotIn(List<String> values) {
            addCriterion("isRefund not in", values, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundBetween(String value1, String value2) {
            addCriterion("isRefund between", value1, value2, "isrefund");
            return (Criteria) this;
        }

        public Criteria andIsrefundNotBetween(String value1, String value2) {
            addCriterion("isRefund not between", value1, value2, "isrefund");
            return (Criteria) this;
        }

        public Criteria andRefundamountIsNull() {
            addCriterion("refundAmount is null");
            return (Criteria) this;
        }

        public Criteria andRefundamountIsNotNull() {
            addCriterion("refundAmount is not null");
            return (Criteria) this;
        }

        public Criteria andRefundamountEqualTo(String value) {
            addCriterion("refundAmount =", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountNotEqualTo(String value) {
            addCriterion("refundAmount <>", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountGreaterThan(String value) {
            addCriterion("refundAmount >", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountGreaterThanOrEqualTo(String value) {
            addCriterion("refundAmount >=", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountLessThan(String value) {
            addCriterion("refundAmount <", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountLessThanOrEqualTo(String value) {
            addCriterion("refundAmount <=", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountLike(String value) {
            addCriterion("refundAmount like", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountNotLike(String value) {
            addCriterion("refundAmount not like", value, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountIn(List<String> values) {
            addCriterion("refundAmount in", values, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountNotIn(List<String> values) {
            addCriterion("refundAmount not in", values, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountBetween(String value1, String value2) {
            addCriterion("refundAmount between", value1, value2, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRefundamountNotBetween(String value1, String value2) {
            addCriterion("refundAmount not between", value1, value2, "refundamount");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("remark like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("remark not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}