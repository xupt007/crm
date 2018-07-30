package com.hui.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CrmFollowExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CrmFollowExample() {
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

        public Criteria andFollowidIsNull() {
            addCriterion("followId is null");
            return (Criteria) this;
        }

        public Criteria andFollowidIsNotNull() {
            addCriterion("followId is not null");
            return (Criteria) this;
        }

        public Criteria andFollowidEqualTo(String value) {
            addCriterion("followId =", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidNotEqualTo(String value) {
            addCriterion("followId <>", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidGreaterThan(String value) {
            addCriterion("followId >", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidGreaterThanOrEqualTo(String value) {
            addCriterion("followId >=", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidLessThan(String value) {
            addCriterion("followId <", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidLessThanOrEqualTo(String value) {
            addCriterion("followId <=", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidLike(String value) {
            addCriterion("followId like", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidNotLike(String value) {
            addCriterion("followId not like", value, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidIn(List<String> values) {
            addCriterion("followId in", values, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidNotIn(List<String> values) {
            addCriterion("followId not in", values, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidBetween(String value1, String value2) {
            addCriterion("followId between", value1, value2, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowidNotBetween(String value1, String value2) {
            addCriterion("followId not between", value1, value2, "followid");
            return (Criteria) this;
        }

        public Criteria andFollowtimeIsNull() {
            addCriterion("followTime is null");
            return (Criteria) this;
        }

        public Criteria andFollowtimeIsNotNull() {
            addCriterion("followTime is not null");
            return (Criteria) this;
        }

        public Criteria andFollowtimeEqualTo(Date value) {
            addCriterion("followTime =", value, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeNotEqualTo(Date value) {
            addCriterion("followTime <>", value, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeGreaterThan(Date value) {
            addCriterion("followTime >", value, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("followTime >=", value, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeLessThan(Date value) {
            addCriterion("followTime <", value, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeLessThanOrEqualTo(Date value) {
            addCriterion("followTime <=", value, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeIn(List<Date> values) {
            addCriterion("followTime in", values, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeNotIn(List<Date> values) {
            addCriterion("followTime not in", values, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeBetween(Date value1, Date value2) {
            addCriterion("followTime between", value1, value2, "followtime");
            return (Criteria) this;
        }

        public Criteria andFollowtimeNotBetween(Date value1, Date value2) {
            addCriterion("followTime not between", value1, value2, "followtime");
            return (Criteria) this;
        }

        public Criteria andContentIsNull() {
            addCriterion("content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("content not between", value1, value2, "content");
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

        public Criteria andReferidIsNull() {
            addCriterion("referId is null");
            return (Criteria) this;
        }

        public Criteria andReferidIsNotNull() {
            addCriterion("referId is not null");
            return (Criteria) this;
        }

        public Criteria andReferidEqualTo(String value) {
            addCriterion("referId =", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidNotEqualTo(String value) {
            addCriterion("referId <>", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidGreaterThan(String value) {
            addCriterion("referId >", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidGreaterThanOrEqualTo(String value) {
            addCriterion("referId >=", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidLessThan(String value) {
            addCriterion("referId <", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidLessThanOrEqualTo(String value) {
            addCriterion("referId <=", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidLike(String value) {
            addCriterion("referId like", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidNotLike(String value) {
            addCriterion("referId not like", value, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidIn(List<String> values) {
            addCriterion("referId in", values, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidNotIn(List<String> values) {
            addCriterion("referId not in", values, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidBetween(String value1, String value2) {
            addCriterion("referId between", value1, value2, "referid");
            return (Criteria) this;
        }

        public Criteria andReferidNotBetween(String value1, String value2) {
            addCriterion("referId not between", value1, value2, "referid");
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