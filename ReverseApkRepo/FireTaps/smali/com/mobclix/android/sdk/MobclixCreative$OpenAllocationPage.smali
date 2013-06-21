.class Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenAllocationPage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;
    }
.end annotation


# instance fields
.field adMobAdView:Landroid/widget/RelativeLayout;

.field network:Ljava/lang/String;

.field params:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 11
    .parameter
    .parameter "p"
    .parameter "c"

    .prologue
    const-string v10, "openadmob"

    .line 923
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 884
    invoke-direct {p0, p1, p3}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 881
    const-string v8, "openadmob"

    iput-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;

    .line 882
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    .line 886
    :try_start_0
    const-string v8, "network"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 889
    :goto_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 890
    .local v5, paramsBuffer:Ljava/lang/StringBuffer;
    const-string v8, "params"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 891
    .local v6, pp:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 897
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 901
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #paramsBuffer:Ljava/lang/StringBuffer;
    .end local v6           #pp:Lorg/json/JSONObject;
    :goto_2
    const/4 v0, 0x0

    .line 902
    .local v0, eventConsumed:Z
    const/4 v4, 0x0

    .line 903
    .local v4, openAllocationCode:I
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;

    const-string v9, "openadmob"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 904
    const/16 v4, -0x2ee

    .line 911
    :goto_3
    iget-object v8, p1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 918
    if-eqz v0, :cond_7

    .line 921
    :cond_1
    :goto_5
    return-void

    .line 892
    .end local v0           #eventConsumed:Z
    .end local v4           #openAllocationCode:I
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v5       #paramsBuffer:Ljava/lang/StringBuffer;
    .restart local v6       #pp:Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 894
    .local v7, v:Ljava/lang/String;
    const-string v8, "&"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 895
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 899
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #k:Ljava/lang/String;
    .end local v5           #paramsBuffer:Ljava/lang/StringBuffer;
    .end local v6           #pp:Lorg/json/JSONObject;
    .end local v7           #v:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 905
    .restart local v0       #eventConsumed:Z
    .restart local v4       #openAllocationCode:I
    :cond_3
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->network:Ljava/lang/String;

    const-string v9, "opengoogle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 906
    const/16 v4, -0x2774

    goto :goto_3

    .line 908
    :cond_4
    const/16 v4, -0x3ee

    goto :goto_3

    .line 911
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 912
    .local v3, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v3, :cond_0

    .line 913
    if-nez v0, :cond_6

    iget-object v9, p1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v3, v9, v4}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x0

    move v0, v9

    :goto_6
    goto :goto_4

    :cond_6
    const/4 v9, 0x1

    move v0, v9

    goto :goto_6

    .line 920
    .end local v3           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_7
    const/16 v8, -0x2ee

    if-ne v4, v8, :cond_1

    .line 921
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAllocation()V

    goto :goto_5

    .line 886
    .end local v0           #eventConsumed:Z
    .end local v4           #openAllocationCode:I
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 879
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method


# virtual methods
.method adMobAllocation()V
    .locals 13

    .prologue
    const-string v12, "mobclix-creative"

    .line 926
    const-string v3, "com.admob.android.ads.AdView"

    .line 927
    .local v3, className:Ljava/lang/String;
    const/4 v1, 0x0

    .line 929
    .local v1, AdMobAdViewClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 930
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/app/Activity;

    aput-object v11, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 931
    .local v4, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    aput-object v9, v8, v10

    .line 932
    .local v8, params:[Ljava/lang/Object;
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    const/4 v2, 0x0

    .line 939
    .local v2, adMobAdListener:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 941
    .local v0, AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v9, "com.admob.android.ads.AdListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 942
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;

    invoke-direct {v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V

    .line 944
    .local v6, handler:Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 945
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    .line 944
    invoke-static {v9, v10, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    .line 943
    invoke-virtual {v0, v9}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 952
    .end local v2           #adMobAdListener:Ljava/lang/Object;
    .end local v6           #handler:Ljava/lang/reflect/InvocationHandler;
    :goto_0
    :try_start_2
    const-string v9, "setAdListener"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 953
    .local v7, m:Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 958
    .end local v7           #m:Ljava/lang/reflect/Method;
    :goto_1
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;

    new-instance v10, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;

    invoke-direct {v10, p0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 967
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 968
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v9, v9, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v10}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    .line 970
    .end local v0           #AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v8           #params:[Ljava/lang/Object;
    :goto_2
    return-void

    .line 933
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 935
    .local v5, e:Ljava/lang/Exception;
    goto :goto_2

    .line 947
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #AdMobAdListenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #adMobAdListener:Ljava/lang/Object;
    .restart local v4       #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v8       #params:[Ljava/lang/Object;
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 948
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v9, "mobclix-creative"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    .end local v2           #adMobAdListener:Ljava/lang/Object;
    .end local v5           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    move-object v5, v9

    .line 956
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v9, "mobclix-creative"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
