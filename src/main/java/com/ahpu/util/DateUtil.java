package com.ahpu.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 时间类的工具类
 *
 *
 */
public class DateUtil {
    private static final TimeZone timeZone = TimeZone.getTimeZone("GMT+08:00");
    private static Log log = LogFactory.getLog(DateUtil.class);

    /**
     * 获取现在的年月
     *
     */
    public static String getTimeNY() {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM");
        return sf.format(new Date());
    }

    public static String getTimeSSS() {
        SimpleDateFormat sdf = new SimpleDateFormat("SSS");
        String format = sdf.format(new Date());
        return format;
    }

    public static String dateToString(@NotNull Date date) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
    }

    public static String dateToString(@NotNull String template, @NotNull Date date) {
        return new SimpleDateFormat(template).format(date);
    }

    /**
     * 获取两个时间中的所有时间
     *
     */
    public static List<String> getBetweenDates(String dateStart, String dataEnd) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date begin = null;
        Date end = null;
        try {
            begin = sdf.parse(dateStart);
            end = sdf.parse(dataEnd);
        } catch (ParseException e) {
            log.error(e.toString());
        }

        List<String> result = new ArrayList<String>();
        Calendar tempStart = Calendar.getInstance();
        tempStart.setTime(begin);

        while (begin.getTime() <= end.getTime()) {
            result.add(sdf.format(tempStart.getTime()));
            tempStart.add(Calendar.DAY_OF_YEAR, 1);
            begin = tempStart.getTime();
        }
        return result;
    }

    public static String thisTime() {
        SimpleDateFormat fs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return fs.format(new Date());
    }

    /**
     * 将时间格式化为指定格式
     *
     */
    public static String formatDefinition(String time, String format) {
        SimpleDateFormat fs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
        SimpleDateFormat f = new SimpleDateFormat(format);
        Date date;
        try {
            date = new Date(fs.parse(time).getTime());
        } catch (ParseException e) {
            try {
                f.parse(time);
                return time;
            } catch (ParseException e1) {
                return "FormatError";
            }
        }
        return f.format(date);
    }

    /**
     * 将时间格式化为指定格式
     *
     */
    public static String formatDefinition(String time, String format, String zdyFormat) {
        SimpleDateFormat fs = new SimpleDateFormat(zdyFormat);
        SimpleDateFormat f = new SimpleDateFormat(format);
        Date date;
        try {
            date = new Date(fs.parse(time).getTime());
        } catch (ParseException e) {
            try {
                f.parse(time);
                return time;
            } catch (ParseException e1) {
                return "FormatError";
            }
        }
        return f.format(date);
    }

    /**
     * 把yyyy-MM-dd HH:mm:ss.S格式的时候格式化为yyyy-MM-dd HH:mm:ss格式
     *
     */
    public static String formatDeleteSecond(String time) {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat fs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
        Date date;
        try {
            date = new Date(fs.parse(time).getTime());
        } catch (ParseException e) {
            try {
                f.parse(time);
                return time;
            } catch (ParseException e1) {
                return "Error";
            }
        }
        return f.format(date);
    }

    /**
     * @param day 推移的天数
     * @return date时间加天数的日期
     */
    public static String addDate(String date, int day) {
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.setTime(getDate(date, "yyyy-MM-dd"));
        calendar.add(GregorianCalendar.DAY_OF_MONTH, day);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.format(calendar.getTime());
    }

    /**
     * @param date      当前日期值
     * @param year      推移的年数
     * @param formatStr 返回的格式
     * @return date时间加天数的日期
     * @author Mengfw
     */
    public static String addYear(String date, int year, String formatStr) {
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.setTime(getDate(date, "yyyy-MM-dd"));
        calendar.add(GregorianCalendar.YEAR, year);
        SimpleDateFormat format = new SimpleDateFormat(formatStr);
        return format.format(calendar.getTime());
    }

    public static String addDate2(String date, int day) {
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.setTime(getDate(date, "yyyyMMdd"));
        calendar.add(GregorianCalendar.DAY_OF_MONTH, day);
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        return format.format(calendar.getTime());
    }

    public static String addWeek(String date, int week) {
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.setTime(getDate(date, "yyyy-MM-dd"));
        calendar.add(GregorianCalendar.WEEK_OF_YEAR, week);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.format(calendar.getTime());
    }

    public static String addMonth(String date, int month) {
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.setTime(getDate(date, "yyyy-MM-dd"));
        calendar.add(GregorianCalendar.MONTH, month);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.format(calendar.getTime());
    }


    /**
     * 日期转换成字符串 把长日期 yyyy-MM-dd HH:mm 转换成短日期格式 yyyy-MM-dd
     */
    public static String dateToString(String StrDate) {
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
        String dd = d.format(isToDate(StrDate));
        return dd;
    }

    /**
     *
     * 日期转换成字符串 把长日期 yyyy-MM-dd HH:mm 转换成短日期格式 yyyy-MM-dd HH:mm:ss
     */
    public static String dateToStringSecond(String strDate) {
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        String dd;
        try {
            date = d.parse(strDate);
            dd = d.format(date);
            return dd;
        } catch (Exception e) {
            log.error(e.toString());
            return "";
        }
    }



    public static synchronized String formatDate(int dateNum) {
        String result = "";
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        try {
            Date date = formatter.parse(String.valueOf(dateNum));
            SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
            result = formatter1.format(date);
        } catch (Exception e) {
        }
        return result;
    }



    public static synchronized int formatDate(Date date) {
        String result = "0";
        try {
            SimpleDateFormat formatter1 = new SimpleDateFormat("yyyyMMdd");
            result = formatter1.format(date);
        } catch (Exception e) {
        }
        return Integer.parseInt(result);
    }

    /**
     * @param msel 毫秒时间
     * @return 毫秒时间 所对应的"yyyy-MM-dd HH:mm"格式的日期
     */

    public static String formatTime(long msel) {
        Date date = new Date(msel);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        formatter.setTimeZone(timeZone);
        return formatter.format(date);
    }

    /**
     * 得到系统当前的日期
     *
     */
    public static int getCurrentDay() {
        GregorianCalendar calendar = new GregorianCalendar();
        return calendar.get(Calendar.DAY_OF_MONTH);
    }


    /**
     * 得到系统当前的年
     *
     */
    public static int getCurrentYear() {
        GregorianCalendar calendar = new GregorianCalendar();
        return calendar.get(Calendar.YEAR);
    }

    /*
     * public static void main(String[] args){
     *  }
     */


    /**
     * 取month月后的日期
     *
     *
     */
    public static String getDateFromMonth(String date, int month) {
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.setTime(getDate(date, "yyyyMMdd"));
        calendar.add(GregorianCalendar.MONTH, month);
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        return format.format(calendar.getTime());
    }

    /**
     * 传入 yyymmdd返回yyyy-mm-dd
     */
    public static String getDateStr(String date) {
        if (date.trim().length() < 8) {
            return "";
        } else {
            String dateStr = "";
            dateStr = date.substring(0, 4) + "-" + date.substring(4, 6) + "-"
                    + date.substring(6, 8);
            return dateStr;
        }

    }

    /**
     * 取两日期之间的天数间隔
     *
     */
    public static int getDistance(String strDate1, String strDate2) {
        int distance = 0;
        Date date1 = getDate(strDate1, "yyyyMMdd");
        Date date2 = getDate(strDate2, "yyyyMMdd");
        distance = (int) ((date2.getTime() - date1.getTime()) / 1000 / 60 / 60 / 24);
        return distance;
    }

    /**
     * 返回传入日期月份的第一天
     *
     */
    public static int getFirstDay(int date) {
        return date / 100 * 100 + 1;
    }

    /**
     * 取得上一个星期的第一天 changes1.1-00 统计内容增加上周的平均值
     * <p>
     * 指定日期。
     *
     * @return 上一个星期的第一天(YYYYMMDD)
     */
    public static synchronized Date getFirstDayOfPrevWeek() {
        /**
         * 详细设计： 1.调用getNextWeek设置当前时间 2.以1为基础，调用getFirstDayOfWeek
         */
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
        gc.setTime(new Date());
        gc.setTime(getPrevWeek(gc.getTime()));
        gc.setTime(format.parse(getFirstDayOfWeek(Integer.parseInt(format
                .format(gc.getTime())))
                + "", new ParsePosition(0)));
        return gc.getTime();
    }

    /**
     * 取得指定日期的所处星期的第一天 changes1.1-00 统计内容增加上周的平均值
     *
     * @param date 指定日期。
     * @return 指定日期的所处星期的第一天
     */
    public static synchronized int getFirstDayOfWeek(int date) {
        /**
         * 详细设计： 1.如果date是星期日，则减0天 2.如果date是星期一，则减1天 3.如果date是星期二，则减2天
         * 4.如果date是星期三，则减3天 5.如果date是星期四，则减4天 6.如果date是星期五，则减5天
         * 7.如果date是星期六，则减6天
         */
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        String strDate = date + "";
        Date day = format.parse(strDate, new ParsePosition(0));
        GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
        gc.setTime(day);
        switch (gc.get(Calendar.DAY_OF_WEEK)) {

            case (Calendar.SUNDAY):
                gc.add(Calendar.DATE, 0);
                break;
            case (Calendar.MONDAY):
                gc.add(Calendar.DATE, -1);
                break;
            case (Calendar.TUESDAY):
                gc.add(Calendar.DATE, -2);
                break;
            case (Calendar.WEDNESDAY):
                gc.add(Calendar.DATE, -3);
                break;
            case (Calendar.THURSDAY):
                gc.add(Calendar.DATE, -4);
                break;
            case (Calendar.FRIDAY):
                gc.add(Calendar.DATE, -5);
                break;
            case (Calendar.SATURDAY):
                gc.add(Calendar.DATE, -6);
                break;
        }
        return Integer.parseInt(format.format(gc.getTime()));
    }

    /**
     * 取得上一个星期的最后一天 changes1.1-00 统计内容增加上周的平均值
     * 指定日期。
     *
     * @return 上一个星期的最后一天(YYYYMMDD)
     */
    public static synchronized Date getLastDayOfPrevWeek() {
        /**
         * 详细设计： 1.调用getNextWeek设置当前时间 2.以1为基础，调用getFirstDayOfWeek
         */
        GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
        Date d = getFirstDayOfPrevWeek();
        gc.setTime(d);
        gc.add(Calendar.DATE, 6);
        return gc.getTime();
    }

    // 得到这个星期的最后一天
    public static synchronized int getLastDayOfWeek(int date) {
        int firstDay = getFirstDayOfWeek(date);
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        String strDate = firstDay + "";
        Date day = format.parse(strDate, new ParsePosition(0));
        GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
        gc.setTime(day);
        gc.add(Calendar.DATE, 6);
        return Integer.parseInt(format.format(gc.getTime()));

    }


    /**
     * 获得上期时间,即传入本周获得是上一周以字符串分割的日期
     *
     */
    public static String getLastPeriod(int benginDate, int endDate1) {
        // 先获得两个相差的日子
        int distanceDate = getDistance(String.valueOf(benginDate), String
                .valueOf(endDate1));
        int endDate2 = Integer.parseInt(addDate2(String.valueOf(endDate1),
                distanceDate));
        String temp = String.valueOf(endDate1) + ",";
        temp = temp + String.valueOf(endDate2);
        return temp;
    }

    /**
     * 根据传入的日期进行月份的加减操作,增加月份传入正数的month,减少月份传入负数的month
     *
     */
    public static int getMonthHandler(int date, int month) {
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
            Calendar c = Calendar.getInstance();// 返回Calendar对象的实例
            Date d = formatter.parse(date + "", new ParsePosition(0));// 可能返回null
            c.setTime(d);
            // c.add(Calendar.DATE, -2);//你要加减的天数
            c.add(Calendar.MONTH, month);// 你要加减的月数
            // c.add(Calendar.YEAR, -2);//你要加减的年数
            Date tempDate = c.getTime();
            String strDate = formatter.format(tempDate);
            return Integer.parseInt(strDate);
        } catch (Exception e) {
            log.error(e.toString());
            return 0;
        }
    }

    /**
     * 取得指定日期的上一个星期 changes1.1-00 统计内容增加上周的平均值
     *
     * @param date 指定日期。
     * @return 指定日期的上一个星期
     */
    public static synchronized Date getPrevWeek(Date date) {
        /**
         * 详细设计： 1.指定日期加7天
         */
        GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
        gc.setTime(date);
        gc.add(Calendar.DATE, -7);
        return gc.getTime();
    }

    /**
     * 得到系统的当前时间 YYYYMMDD
     *
     */
    public static int getThisday() {
        StringBuffer sb = new StringBuffer(8);
        sb.append(getCurrentYear());
        int iMonth = getCurrentMonth();
        if (String.valueOf(iMonth).length() == 1)
            sb.append("0" + iMonth);
        else
            sb.append(iMonth);
        int iDay = getCurrentDay();
        if (String.valueOf(iDay).length() == 1)
            sb.append("0" + iDay);
        else
            sb.append(iDay);
        return new Integer(sb.toString()).intValue();
    }

    /**
     * 返回昨天的时间,int型,yyyyMMdd
     *
     */
    public static int getYesterday() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        Date tempDate = new Date();
        long tempLong = tempDate.getTime();
        tempLong = tempLong - (24 * 60 * 60 * 1000);
        tempDate.setTime(tempLong);
        String strDate = formatter.format(tempDate);
        return Integer.parseInt(strDate);
    }

    /**
     * 计算一个月有多少天
     *
     */
    public static int isMontyToDay(int year, int month) {
        int maxDate;
        // 计算机0-11月
        month = month - 1;
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.YEAR, year);
        cal.set(Calendar.MONTH, month);
        maxDate = cal.getActualMaximum(Calendar.DATE);
        return maxDate;
    }

    // 日期转换
    public static Date isToDate(String StrDate) {
        Date date = new Date();
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
        try {
            date = d.parse(StrDate);
        } catch (ParseException e) {

        }
        return date;
    }

    /**
     * 得到现在时间 yyyy-MM-dd
     */
    public static String getNowDate() {
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
        String dd = d.format(new Date());
        return dd;
    }

    /**
     * 得到现在时间 yyyy-MM-dd HH:mm:ss
     */
    public static String getNowDateSS() {
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dd = d.format(new Date());
        return dd;
    }

    /**
     * 得到现在时间 yyyy-MM-dd HH:mm:ss
     */
    public static String getDateyyyyMMdd() {
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
        String dd = d.format(new Date());
        return dd;
    }

    /**
     * 得到现在时间 yyyy-MM-dd
     */
    public static String getNowDateSS(Date date, String fmt) {
        SimpleDateFormat d = new SimpleDateFormat(fmt);
        String dd = d.format(date);
        return dd;
    }

    /**
     * 得到现在时间 yyyy-MM-dd
     */
    public static String getNowDateInt() {
        SimpleDateFormat d = new SimpleDateFormat("yyyyMMddHHmmss");
        String dd = d.format(new Date());
        return dd;
    }

    /**
     * 得到现在时间 yyyy-MM-dd
     */
    public static String getDateStr(Date date) {
        SimpleDateFormat d = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String dd = d.format(date);
        return dd;
    }

    /**
     * 将200812121212 转为 YYYY-MM-DD HH:MM
     *
     */
    public static String changeTime(String str) {
        if (str.length() >= 12) {
            String changeStr = str.substring(0, 4) + "-" + str.substring(4, 6) + "-" + str.substring(6, 8) + " " +
                    str.substring(8, 10) + ":" + str.substring(10, 12);
            return changeStr;
        } else {
            return str;
        }
    }

    /**
     * mysql db插入dateTime类型转换
     */
    public static Timestamp setSQLDateTime() {
        Date date = new Date();
        return new Timestamp(date.getTime());
    }

    /**
     * mysql db插入dateTime类型转换
     *
     */
    public static Timestamp setSQLDateTime(Date date) {
        if (date == null)
            date = new Date();
        return new Timestamp(date.getTime());
    }

    /**
     * 得到系统当前时间
     *
     * @param format 指定的时间显示格式，比如:“yyyy-MM-dd HH:mm”
     * @return 按指定格式显示的当前日期
     */
    public static String getCurrentTime(String format) {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        return formatter.format(new Date());
    }

    public static String format(String format, Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        return formatter.format(date);
    }

    /**
     * 得到系统当前周七天的日期（以周日开始）
     *
     * @param format 指定的时间显示格式，比如:“yyyy-MM-dd HH:mm”
     * @return 按指定格式显示的当前周七天的字符串数组
     */
    public static String[] getCurrentWeek(String format) {
        String[] result = {"", "", "", "", "", "", "", ""};

        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        GregorianCalendar cal = new GregorianCalendar();

        cal.setTime(new Date());
        for (int i = 1; i < 8; i++) {
            cal.set(GregorianCalendar.DAY_OF_WEEK, i);
            result[i - 1] = dateFormat.format(cal.getTime());
        }

        return result;
    }

    /**
     * 得到系统当前日期所在周的第一天
     *
     */
    public static String getFirstDayOfWeek(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar c = Calendar.getInstance(Locale.CHINA);
        c.setFirstDayOfWeek(Calendar.MONDAY);
        c.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        String firstDay = df.format(c.getTime());
        return firstDay;
    }

    /**
     * 得到系统当前日期所在周的最后一天
     *
     */
    public static String getLastDayOfWeek(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar c = Calendar.getInstance(Locale.CHINA);
        c.setFirstDayOfWeek(Calendar.MONDAY);
        c.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
        String lastDay = df.format(c.getTime());
        return lastDay;
    }

    /**
     * 得到系统当前日期上一周的第一天
     *
     */
    public static String getFirstDayOfLastWeek(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar c = Calendar.getInstance();
        c.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        c.add(Calendar.DAY_OF_YEAR, -7);
        String firstDay = df.format(c.getTime());
        return firstDay;
    }

    /**
     * 得到系统当前日期上一周的最后一天
     *
     */
    public static String getLastDayOfLastWeek(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar c = Calendar.getInstance();
        c.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
        String lastDay = df.format(c.getTime());
        return lastDay;
    }

    /**
     * 得到系统当前日期上月的第一天
     *
     */
    public static String getFirstDayOfLastMonth(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, -1);
        cal.set(Calendar.DAY_OF_MONTH, 1);
        String firstDay = df.format(cal.getTime());
        return firstDay;
    }

    /**
     * 得到系统当前日期上月的最后一天
     */
    public static String getLastDayOfLastMonth(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DAY_OF_MONTH, 1);
        cal.add(Calendar.DAY_OF_MONTH, -1);
        String lastDay = df.format(cal.getTime());
        return lastDay;
    }

    /**
     * 得到系统当前日期所在年的第一天
     *
     * @param formate
     * @return
     */
    public static String getFirstDayOfYear(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DAY_OF_YEAR, 1);
        String firstDay = df.format(cal.getTime());
        return firstDay;
    }

    /**
     * 得到系统当前日期上一年的第一天
     *
     */
    public static String getFirstDayOfLastYear(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.YEAR, -1);
        cal.set(Calendar.DAY_OF_YEAR, 1);
        String firstDay = df.format(cal.getTime());
        return firstDay;
    }

    /**
     * 得到系统当前日期上一年的最后一天
     *
     */
    public static String getLastDayOfLastYear(String formate) {
        SimpleDateFormat df = new SimpleDateFormat(formate);
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DAY_OF_YEAR, 1);
        cal.add(Calendar.DAY_OF_YEAR, -1);
        String firstDay = df.format(cal.getTime());
        return firstDay;
    }

    /*
     * 取本周7天的第一天（周一的日期）
     */
    public static String getNowWeekBegin() {
        int mondayPlus;
        Calendar cd = Calendar.getInstance();
        //获得今天是一周的第几天，星期日是第一天，星期二是第二天......
        int dayOfWeek = cd.get(Calendar.DAY_OF_WEEK) - 1; // 因为按中国礼拜一作为第一天所以这里减1
        if (dayOfWeek == 1) {
            mondayPlus = 0;
        } else {
            mondayPlus = 1 - dayOfWeek;
        }
        GregorianCalendar currentDate = new GregorianCalendar();
        currentDate.add(GregorianCalendar.DATE, mondayPlus);
        Date monday = currentDate.getTime();


        DateFormat df = DateFormat.getDateInstance();
        String preMonday = df.format(monday);

        return preMonday + " 00:00:00";


    }

    /**
     * 得到系统当前月
     *
     * @return 当前月
     */
    public static int getCurrentMonth() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM");
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(new Date());
        String strMonth = dateFormat.format(cal.getTime());

        return Integer.valueOf(strMonth).intValue();
    }

    /**
     * 将一个字符串的日期描述转换为java.util.Date对象
     *
     * @param strDate 字符串的日期描述
     * @param format  字符串的日期格式，比如:“yyyy-MM-dd HH:mm”
     * @return 字符串转换的日期对象java.util.Date
     */
    public static Date getDate(String strDate, String format) {
        if (strDate == null || strDate.trim().equals("")) {
            strDate = getCurrentTime(format);
        }

        SimpleDateFormat formatter = new SimpleDateFormat(format);

        Date date;
        try {
            date = formatter.parse(strDate);
        } catch (ParseException e) {
            date = null;
        }

        return date;
    }

    /**
     * 从字符串日期描述中得到月份
     *
     * @param strDate 字符串日期描述
     * @param format  字符串的日期格式，比如:“yyyy-MM-dd HH:mm”
     * @return 字符串中的月份
     */
    public static int getMonth(String strDate, String format) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM");
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(getDate(strDate, format));
        String strMonth = dateFormat.format(cal.getTime());

        return Integer.valueOf(strMonth).intValue();
    }

    /**
     * 从字符串日期描述中得到年份
     *
     * @param strDate 字符串日期描述
     * @param format  字符串的日期格式，比如:“yyyy-MM-dd HH:mm”
     * @return 字符串日期中的年份
     */
    public static int getYear(String strDate, String format) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(getDate(strDate, format));
        String strMonth = dateFormat.format(cal.getTime());

        return Integer.valueOf(strMonth).intValue();
    }

    /**
     * 判断指定时间是否在某一个时间区域内
     *
     * @param strDate  要判断的日期字符串
     * @param strBegin 时间区域开始的日期字符串
     * @param strEnd   时间区域截至的日期字符串
     * @param format   字符串的日期格式，比如:“yyyy-MM-dd HH:mm”
     * @return 如果指定时间在时间区域内，返回true
     */
    public static boolean isBetween(
            String strDate,
            String strBegin,
            String strEnd,
            String format) {
        try {
            Date date = getDate(strDate, format);
            Date dBegin = getDate(strBegin, format);
            Date dEnd = getDate(strEnd, format);

            long lDate = date.getTime();
            long lBegin = dBegin.getTime();
            long lEnd = dEnd.getTime();
            if (lBegin <= lDate && lDate <= lEnd) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            log.error(e.toString());
            return false;
        }
    }

    /**
     * 得到当前时间之后的指定天数的日期
     *
     * @param day    指定的天数
     * @param format 字符串的日期格式，比如:“yyyy-MM-dd HH:mm”
     * @return String 当前时间之后的指定天数的日期
     */
    public static String addDay(int day, String format) {
        String dateBack = "";
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Calendar date = Calendar.getInstance();
        date.add(Calendar.DAY_OF_YEAR, day);
        dateBack = dateFormat.format(date.getTime());
        return dateBack;
    }

    public static String addDay(int day, String sourcedate, String format) {
        String dateBack = "";
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Date dates;
        try {
            dates = dateFormat.parse(sourcedate);
            Calendar date = Calendar.getInstance();
            date.setTime(dates);
            date.add(Calendar.DAY_OF_YEAR, day);
            dateBack = dateFormat.format(date.getTime());
        } catch (ParseException e) {
            log.error(e.toString());
        }

        return dateBack;
    }

    /**
     * 得到当前时间加上指定分钟数的的日期
     *
     */
    public static String addMinute(int minute, String format, String sdate) {
        String dateBack = "";
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Date date;
        try {
            date = dateFormat.parse(sdate);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            cal.add(Calendar.MINUTE, minute);
            dateBack = dateFormat.format(cal.getTime());
        } catch (ParseException e) {
            log.error(e.toString());
        }

        return dateBack;
    }

    /**
     * 得到当前时间加上指定秒数的的日期
     *
     */
    public static String addSecond(int second, String format, String sdate) {
        String dateBack = "";
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Date date;
        try {
            date = dateFormat.parse(sdate);
            Calendar cal = Calendar.getInstance();
            cal.get(Calendar.DAY_OF_MONTH);
            cal.setTime(date);
            cal.add(Calendar.SECOND, second);
            dateBack = dateFormat.format(cal.getTime());
        } catch (ParseException e) {
            log.error(e.toString());
        }

        return dateBack;
    }

    /**
     * 计算两个日期间的天数
     *
     * @param fromDate 起始日期
     * @param toDate   结束日期
     */
    public static int dateDiff(String fromDate, String toDate)
            throws ParseException {
        int days = 0;

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date from = df.parse(fromDate);
        Date to = df.parse(toDate);
        days = (int) Math.abs((to.getTime() - from.getTime())
                / (24 * 60 * 60 * 1000)) + 1;
        return days;
    }

    public static String getLastDayOfMonth(String sourcedate, String format) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Date date = null;
        try {
            date = dateFormat.parse(sourcedate);
        } catch (ParseException e) {
            log.error(e.toString());
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(calendar.get(Calendar.YEAR),
                calendar.get(Calendar.MONTH), 1);
        calendar.roll(Calendar.DATE, -1);

        String lastDayOfMonth = dateFormat.format(calendar.getTime());
        return lastDayOfMonth;
    }

    public static String getFirstDayOfMonth(String sourcedate, String format) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Date date = null;
        try {
            date = dateFormat.parse(sourcedate);
        } catch (ParseException e) {
            log.error(e.toString());
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(calendar.get(Calendar.YEAR),
                calendar.get(Calendar.MONTH), 1);
        //calendar.roll(Calendar.DATE, -1);

        String lastDayOfMonth = dateFormat.format(calendar.getTime());
        return lastDayOfMonth;
    }

    public static void main(String[] args) {
        // log.debug( addDate(getDateyyyyMMdd(),-7));
        try {
            int k = (dateDiff("2016-09-28 14:00:00", "2016-09-28 19:00:00") - 1);
            log.debug(k);
            String d = addDay(3, "2016-09-28 19:00:00", "yyyy-MM-dd");
            log.debug(d);
            String str = getFirstDayOfWeek("yyyy-MM-dd");
            log.debug(str);
            String startDate = DateUtil.addDay(0, "2016-10-11", "yyyy-MM") + "-01";
            log.debug(startDate);
            Calendar cal = Calendar.getInstance();
            int ka = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
            log.debug(ka);
            String lastDateOfMonth = getFirstDayOfMonth("2016-10-11", "yyyy-MM-dd");
            log.debug(lastDateOfMonth);
            log.debug(getMonth("2016-09-11", "yyyy-MM-dd"));

        } catch (ParseException e) {
            log.error(e.toString());
        }
    }


    /**
     * 获取当前时间yyyyMMddHHmmssSSS + 5位随机数<br/>
     * 最后格式yyyyMMddHHmmssSSS*****<br/>
     * 例:2017112516375866612345
     */
    public static String thisDateAddRandomFive() {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        return format.format(new Date()) + "" + (int) ((Math.random() * 89999) + 10000);
    }


    /**
     * 当前季度的结束时间，即2012-03-31 23:59:59
     *
     */
    public static Date getSeasonEndTime(int month) {
        SimpleDateFormat shortSdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat longSdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Calendar c = Calendar.getInstance();
        Date now = null;
        try {
            if (month >= 1 && month <= 3) {
                c.set(Calendar.MONTH, 2);
                c.set(Calendar.DATE, 31);
            } else if (month >= 4 && month <= 6) {
                c.set(Calendar.MONTH, 5);
                c.set(Calendar.DATE, 30);
            } else if (month >= 7 && month <= 9) {
                c.set(Calendar.MONTH, 8);
                c.set(Calendar.DATE, 30);
            } else if (month >= 10 && month <= 12) {
                c.set(Calendar.MONTH, 11);
                c.set(Calendar.DATE, 31);
            }
            now = longSdf.parse(shortSdf.format(c.getTime()) + " 23:59:59");
        } catch (Exception e) {
            log.error(e.toString());
        }
        return now;
    }

    public static boolean compare(String beginTime, String StopTime) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date sd1 = null;
        Date sd2 = null;
        try {
            sd1 = df.parse(beginTime);
            sd2 = df.parse(StopTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return sd1.before(sd2);
    }
}