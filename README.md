
1.先定义一个Person类,定义两个实例方法

		//定义方法
		@interface Person : NSObject
		- (void)eat;
		- (void)run;
		@end
		
		//方法实现		
		- (void)eat {
    		NSLog(@"eat");
		}
		- (void)run {
    		NSLog(@"run");
		}
		
		//方法调用
		Person *per = [[Person alloc] init];
   		[per eat];
    	[per run];

2.目标: 链式编程 [[per eat] run] 或 [[per run] eat]

		//修改方法返回值
		- (Person *)eat;
		- (Person *)run;

		//实现
		- (Person *)eat {
    		NSLog(@"eat");
    		return self;
		}
		- (Person *)run {
    		NSLog(@"run");
    		return self;
		}
		
3.目标:函数编程 per.eat().run(); 或 per.run().eat();
	
	//1.先实现 per.eat(); per.run();
	// () 要使用block,然后无返回值 无参数的 void (^)()
    	//定义方法
    	- (void (^)())eat;
		- (void (^)())run;
		
		//实现
		- (void (^)())eat {
   		 	void (^eatBlock)() = ^ {
       	 		NSLog(@"eat");
    		};
    		return eatBlock;
		}

		- (void (^)())run {
    		void (^runBlock)() = ^ {
       			 NSLog(@"run");
    		};
   	 		return runBlock;
		}
		
		//调用
		per.eat();
    	per.run();

    //2.然后实现 per.eat().run(); per.run().eat();
    //block返回值需要改成Person类型的,
    	//方法定义
    	- (Person *(^)())eat;
		- (Person *(^)())run;
    
    	//实现
    	- (Person *(^)())eat {
    		Person * (^eatBlock)() = ^ {
        		NSLog(@"eat");
        		return self;
		    	};
   			 return eatBlock;
		}

		- (Person *(^)())run {
    		// 等同上面的方法
    		return ^ {
       		    NSLog(@"run");
        		return self;
   		 };
		}
		
		//调用
		per.eat().run().eat();


4.带参数的 per.eat(@"pizza").run(5000.0);
		
	//定义
	- (Person *(^)(NSString *food))eat;
	- (Person *(^)(double distance))run;

	//实现
	- (Person *(^)(NSString *food))eat {
    	return ^ (NSString *eatFood){
          	NSLog(@"吃 %@",eatFood);
        	return self;
    	};
	}
	
	- (Person *(^)(double distance))run {
   		 return ^ (double distance){
       	    NSLog(@"跑 %.2f",distance);
        	return self;
    	};
	}
	
	//调用
	per.eat(@"pizza").run(5000.0);


