package com.bootcamp.lunch.util;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

public class LunchOrderUtil {

	public String getLunchDayPage() {

		String todayDay = null;
		String todayLunch = null;
		String lowerCaseDay = null;
		boolean orderLunch = true;

		Calendar calendar = Calendar.getInstance(TimeZone.getDefault());//Getting the instance of the calender
		int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);//getting the day as the integer
		todayDay = calendar.getDisplayName(Calendar.DAY_OF_WEEK, Calendar.LONG,	Locale.getDefault());//getting todays day as string format
		if (dayOfWeek == 1 || dayOfWeek == 0 || dayOfWeek == 3	|| dayOfWeek == 0 || dayOfWeek == 7) {//only order if its Wednesday and Friday.
			orderLunch = false;
		}

		if (orderLunch == false) {
			todayLunch = getLunchName(todayDay);//calling to get the lunch menu
			return "noLunchDay";
		}
		todayLunch = getLunchName(todayDay);
		lowerCaseDay = todayDay.toLowerCase();
		return "wednesday" + "Lunch";//adding the day with the Lunch to get the specific page
	}

	public String getLunchName(String day) {

		String lunch = null;

		switch (day) {
		case "Sunday":
			lunch = "";
			break;
		case "Monday":
			lunch = "Goat Biryani";
			break;
		case "Tuesday":
			lunch = "Pizza";
			break;
		case "Wednesday":
			lunch = "Which Wich";
			break;
		case "Thursday":
			lunch = "Chicken Biryani";
			break;
		case "Friday":
			lunch = "Chipotle";
			break;
		case "Saturday":
			break;
		default:
			break;
		}

		return lunch;

	}

}
