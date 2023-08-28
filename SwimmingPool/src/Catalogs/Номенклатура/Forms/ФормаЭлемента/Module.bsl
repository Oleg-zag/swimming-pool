
&НаКлиенте
Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
	ПередЗаписьюНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПередЗаписьюНаСервере()
	Объект.Наименование = Объект.Наименование + " " + Объект.ВидБассейна + " " + Объект.КоличествоПосещений
КонецПроцедуры




#Область ОписаниеПеременных

#КонецОбласти

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	УправлениеВидимостиЭлементовФормы();
КонецПроцедуры





#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ВидНоменклатурыПриИзменении(Элемент)
	УправлениеВидимостиЭлементовФормы();
КонецПроцедуры

#КонецОбласти



#Область ОбработчикиСобытийЭлементовТаблицыФормы //<ИмяТаблицыФормы>


#КонецОбласти

#Область ОбработчикиКомандФормы

// Код процедур и функций

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура УправлениеВидимостиЭлементовФормы()
	
	ЭтоПосещениеБассейна = (Объект.ВидНоменклатуры = Перечисления.ВидНоменклатуры.ПосещениеБассейна);
	Элементы.ВидБассейна.Видимость = ЭтоПосещениеБассейна;
	Элементы.КоличествоПосещений.Видимость = ЭтоПосещениеБассейна;
	Если ЭтоПосещениеБассейна = Истина Тогда
		Объект.Наименование = Объект.Наименование + Объект.ВидБассейна + Объект.КоличествоПосещений
	КонецЕсли
	
КонецПроцедуры	

#КонецОбласти
