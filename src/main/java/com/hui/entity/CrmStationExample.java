package com.hui.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CrmStationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CrmStationExample() {
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

        public Criteria andStationidIsNull() {
            addCriterion("stationId is null");
            return (Criteria) this;
        }

        public Criteria andStationidIsNotNull() {
            addCriterion("stationId is not null");
            return (Criteria) this;
        }

        public Criteria andStationidEqualTo(String value) {
            addCriterion("stationId =", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidNotEqualTo(String value) {
            addCriterion("stationId <>", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidGreaterThan(String value) {
            addCriterion("stationId >", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidGreaterThanOrEqualTo(String value) {
            addCriterion("stationId >=", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidLessThan(String value) {
            addCriterion("stationId <", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidLessThanOrEqualTo(String value) {
            addCriterion("stationId <=", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidLike(String value) {
            addCriterion("stationId like", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidNotLike(String value) {
            addCriterion("stationId not like", value, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidIn(List<String> values) {
            addCriterion("stationId in", values, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidNotIn(List<String> values) {
            addCriterion("stationId not in", values, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidBetween(String value1, String value2) {
            addCriterion("stationId between", value1, value2, "stationid");
            return (Criteria) this;
        }

        public Criteria andStationidNotBetween(String value1, String value2) {
            addCriterion("stationId not between", value1, value2, "stationid");
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

        public Criteria andFlagIsNull() {
            addCriterion("flag is null");
            return (Criteria) this;
        }

        public Criteria andFlagIsNotNull() {
            addCriterion("flag is not null");
            return (Criteria) this;
        }

        public Criteria andFlagEqualTo(String value) {
            addCriterion("flag =", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotEqualTo(String value) {
            addCriterion("flag <>", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThan(String value) {
            addCriterion("flag >", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThanOrEqualTo(String value) {
            addCriterion("flag >=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThan(String value) {
            addCriterion("flag <", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThanOrEqualTo(String value) {
            addCriterion("flag <=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLike(String value) {
            addCriterion("flag like", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotLike(String value) {
            addCriterion("flag not like", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagIn(List<String> values) {
            addCriterion("flag in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotIn(List<String> values) {
            addCriterion("flag not in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagBetween(String value1, String value2) {
            addCriterion("flag between", value1, value2, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotBetween(String value1, String value2) {
            addCriterion("flag not between", value1, value2, "flag");
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

        public Criteria andBeforeclassidIsNull() {
            addCriterion("beforeClassId is null");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidIsNotNull() {
            addCriterion("beforeClassId is not null");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidEqualTo(String value) {
            addCriterion("beforeClassId =", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidNotEqualTo(String value) {
            addCriterion("beforeClassId <>", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidGreaterThan(String value) {
            addCriterion("beforeClassId >", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidGreaterThanOrEqualTo(String value) {
            addCriterion("beforeClassId >=", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidLessThan(String value) {
            addCriterion("beforeClassId <", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidLessThanOrEqualTo(String value) {
            addCriterion("beforeClassId <=", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidLike(String value) {
            addCriterion("beforeClassId like", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidNotLike(String value) {
            addCriterion("beforeClassId not like", value, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidIn(List<String> values) {
            addCriterion("beforeClassId in", values, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidNotIn(List<String> values) {
            addCriterion("beforeClassId not in", values, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidBetween(String value1, String value2) {
            addCriterion("beforeClassId between", value1, value2, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andBeforeclassidNotBetween(String value1, String value2) {
            addCriterion("beforeClassId not between", value1, value2, "beforeclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidIsNull() {
            addCriterion("afterClassId is null");
            return (Criteria) this;
        }

        public Criteria andAfterclassidIsNotNull() {
            addCriterion("afterClassId is not null");
            return (Criteria) this;
        }

        public Criteria andAfterclassidEqualTo(String value) {
            addCriterion("afterClassId =", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidNotEqualTo(String value) {
            addCriterion("afterClassId <>", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidGreaterThan(String value) {
            addCriterion("afterClassId >", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidGreaterThanOrEqualTo(String value) {
            addCriterion("afterClassId >=", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidLessThan(String value) {
            addCriterion("afterClassId <", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidLessThanOrEqualTo(String value) {
            addCriterion("afterClassId <=", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidLike(String value) {
            addCriterion("afterClassId like", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidNotLike(String value) {
            addCriterion("afterClassId not like", value, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidIn(List<String> values) {
            addCriterion("afterClassId in", values, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidNotIn(List<String> values) {
            addCriterion("afterClassId not in", values, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidBetween(String value1, String value2) {
            addCriterion("afterClassId between", value1, value2, "afterclassid");
            return (Criteria) this;
        }

        public Criteria andAfterclassidNotBetween(String value1, String value2) {
            addCriterion("afterClassId not between", value1, value2, "afterclassid");
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