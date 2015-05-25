# YRClassSafeCategory
iOS开发 容错库

---

最近发现还是有很多新手朋友在问类似问题怎么解决，想了想把几年前做的，一直在使用的小容错库开源出来。  

iOS开发中，经常遇到解析字典或其他转换的情况，比如下面这个dictionary：


    NSDictionary *dictionary = @{@"num1":@1,
                          @"num2":@"2",
                          @"string":@"this is a string",
                          @"dic":@{@"key":@"value"},
                          @"array":@[@1,@2],
                          };
                          
                          
一般的解析
	
	-(void)parseDic:(NSDictionary*)dictionary{
    	NSInteger num1;
    	id num1Obj = [dictionary objectForKey:@"num1"];
    	if (num1Obj) {
        	if ([num1Obj isKindOfClass:[NSNumber class]]) {
            	num1 = [num1Obj integerValue];
        	}else if([num1Obj isKindOfClass:[NSString class]]){
            	num1 = [num1Obj integerValue];
        	}
    	}
    	NSDictionary *dic = [dictionary objectForKey:@"dic"];
    	if (dic&&[dic isKindOfClass:[NSDictionary class]]) {
        	//继续处理
    	}
    	//。。。其他之类的
    	NSString *key;//又或者，你遇到了一个传值过来的key，需要判断
    	if(key){
        	NSString *string = [dic objectForKey:key];
    	}
	}
	

使用了我的容错库后

	-(void)parseDic:(NSDictionary*)dictionary{
    	NSInteger num1 = [dictionary integerForKeySafe:@"num1"];
    	NSDictionary *dic = [dictionary dictionaryForKeySafe:@"dic"];
    	//。。。其他之类的
    	NSString *key;//又或者，你遇到了一个传值过来的key，需要判断
    	NSString *string = [dic objectForKeySafe:key];
	}
	
从此解析写起来so easy，而且妈妈再也不用担心你容错不到位产生崩溃了！  
  
本人对以下几种情况都做了相应处理，主要包括：    
1. NSString的数值转换、字符串截取  
2. NSNumber的数值转换  
3. NSDictionary的各种取值和空key处理  
4. NSArray的各种越界情况处理  
5. ...

当发生了出错情况时，比如解析需要一个dic，但是返回类型为string，此时使用我的容错库会得到nil，由于nil的任何消息都能安全执行通过，因此不会出现崩溃。