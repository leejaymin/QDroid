.class public Lcom/scoreloop/client/android/core/controller/UserController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/UserController$h;,
        Lcom/scoreloop/client/android/core/controller/UserController$g;,
        Lcom/scoreloop/client/android/core/controller/UserController$f;,
        Lcom/scoreloop/client/android/core/controller/UserController$e;,
        Lcom/scoreloop/client/android/core/controller/UserController$d;,
        Lcom/scoreloop/client/android/core/controller/UserController$c;,
        Lcom/scoreloop/client/android/core/controller/UserController$b;,
        Lcom/scoreloop/client/android/core/controller/UserController$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 392
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/UserController;->b:Z

    .line 408
    return-void
.end method

.method private b(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 668
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v2

    .line 669
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v4

    .line 670
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v6

    .line 671
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 672
    new-instance v7, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v7}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 675
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v8

    .line 676
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    sget-object v9, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v7, v4, v0, v9}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v8, v0}, Lcom/scoreloop/client/android/core/model/User;->b(Lorg/json/JSONObject;)V

    .line 679
    :cond_0
    const-string v0, "context"

    sget-object v9, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v7, v4, v0, v9}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const-string v0, "oldUserContext"

    new-instance v9, Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/scoreloop/client/android/core/model/User;->getContext()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/scoreloop/client/android/core/model/User;->setContext(Ljava/util/Map;)V

    .line 683
    const-string v0, "version"

    sget-object v9, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v10, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v7, v4, v0, v9, v10}, Lcom/scoreloop/client/android/core/util/SetterIntent;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/scoreloop/client/android/core/model/User;->a(Ljava/lang/Long;)V

    .line 686
    const-string v0, "newUserContext"

    new-instance v9, Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/scoreloop/client/android/core/model/User;->getContext()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 750
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :sswitch_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/controller/UserController$e;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v7, v4, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/controller/UserController$e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    const-string v0, "context"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v7, v4, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 695
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :sswitch_1
    const-string v0, "context"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v7, v4, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    invoke-direct {v0, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;-><init>(I)V

    .line 701
    invoke-virtual {v0, v5}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Ljava/util/Map;)V

    .line 702
    throw v0

    .line 704
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :sswitch_2
    const-string v0, "error"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 707
    const-string v0, "details"

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->COERCE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v8, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_AND_COERCES_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v7, v4, v0, v5, v8}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v7

    .line 709
    const/4 v0, 0x0

    .line 710
    const-string v5, "args"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/json/JSONArray;

    if-eqz v5, :cond_10

    .line 711
    const-string v0, "args"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v5, v0

    .line 713
    :goto_0
    if-nez v5, :cond_d

    move v0, v1

    .line 714
    :goto_1
    new-instance v8, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    invoke-direct {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;-><init>(I)V

    .line 715
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_b

    .line 716
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 717
    const/16 v2, 0x10

    invoke-virtual {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 719
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 720
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 722
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 723
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 725
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8

    .line 726
    invoke-virtual {v8, v3}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 728
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 729
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 731
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 732
    const/16 v2, 0x20

    invoke-virtual {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 734
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    .line 735
    const/16 v2, 0x40

    invoke-virtual {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 738
    :cond_b
    const-string v2, ""

    move v4, v1

    .line 739
    :goto_2
    if-ge v4, v0, :cond_e

    .line 740
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    .line 741
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 742
    if-eqz v9, :cond_c

    .line 743
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 713
    :cond_d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto/16 :goto_1

    .line 746
    :cond_e
    invoke-virtual {v8, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Ljava/lang/String;)V

    .line 747
    invoke-interface {v6, p0, v8}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 752
    :goto_3
    return v1

    :cond_f
    move v1, v3

    goto :goto_3

    :cond_10
    move-object v5, v0

    goto/16 :goto_0

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0x199 -> :sswitch_1
        0x1a6 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 614
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v0

    .line 616
    sget-object v2, Lcom/scoreloop/client/android/core/controller/UserController$g;->d:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/scoreloop/client/android/core/controller/UserController$a;->a:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/scoreloop/client/android/core/controller/UserController$d;->a:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/scoreloop/client/android/core/controller/UserController$f;->b:Ljava/lang/Object;

    if-ne v0, v2, :cond_6

    .line 617
    :cond_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/scoreloop/client/android/core/controller/UserController$d;->a:Ljava/lang/Object;

    if-eq v0, v4, :cond_1

    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v2, v0, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/scoreloop/client/android/core/controller/UserController$d;->a:Ljava/lang/Object;

    if-ne v0, v4, :cond_3

    const-string v0, "context"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v2, v0, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-static {p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v2, v0, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lcom/scoreloop/client/android/core/model/User;->a(Lorg/json/JSONObject;)V

    :cond_4
    const-string v0, "context"

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v2, v0, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/scoreloop/client/android/core/model/User;->setContext(Ljava/util/Map;)V

    const-string v0, "version"

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v6, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v2, v0, v5, v6}, Lcom/scoreloop/client/android/core/util/SetterIntent;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/scoreloop/client/android/core/model/User;->a(Ljava/lang/Long;)V

    :cond_5
    move v0, v1

    .line 625
    :goto_0
    return v0

    .line 618
    :cond_6
    sget-object v2, Lcom/scoreloop/client/android/core/controller/UserController$b;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    .line 619
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    invoke-static {p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    move-result-object v0

    throw v0

    :sswitch_3
    move v0, v1

    goto :goto_0

    .line 620
    :cond_7
    sget-object v2, Lcom/scoreloop/client/android/core/controller/UserController$c;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_9

    .line 621
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    sparse-switch v0, :sswitch_data_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const-string v0, "buddy_id"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v2, v0, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    invoke-static {p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    move-result-object v0

    throw v0

    :cond_8
    move v0, v1

    goto :goto_0

    .line 622
    :cond_9
    sget-object v1, Lcom/scoreloop/client/android/core/controller/UserController$h;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z

    move-result v0

    goto :goto_0

    .line 624
    :cond_a
    sget-object v1, Lcom/scoreloop/client/android/core/controller/UserController$e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_b

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z

    move-result v0

    goto :goto_0

    .line 628
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response of unknown request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0x1a6 -> :sswitch_1
    .end sparse-switch

    .line 619
    :sswitch_data_1
    .sparse-switch
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_3
        0x1a6 -> :sswitch_2
    .end sparse-switch

    .line 621
    :sswitch_data_2
    .sparse-switch
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_4
        0x1a6 -> :sswitch_5
    .end sparse-switch
.end method

.method public addAsBuddy()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 421
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 423
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "User you\'re trying to add as buddy is a current session user"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Ljava/lang/Exception;)V

    .line 432
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v2, Lcom/scoreloop/client/android/core/controller/UserController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/scoreloop/client/android/core/controller/UserController$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V

    .line 430
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 431
    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    goto :goto_0
.end method

.method public getUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController;->c:Lcom/scoreloop/client/android/core/model/User;

    if-nez v0, :cond_0

    .line 446
    invoke-super {p0}, Lcom/scoreloop/client/android/core/controller/RequestController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 447
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController;->c:Lcom/scoreloop/client/android/core/model/User;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No session user assigned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController;->c:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method final i()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/UserController;->b:Z

    return v0
.end method

.method public loadBuddies()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 487
    new-instance v1, Lcom/scoreloop/client/android/core/controller/UserController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/scoreloop/client/android/core/controller/UserController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V

    .line 488
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 489
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 490
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 491
    return-void
.end method

.method public loadUser()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 507
    new-instance v1, Lcom/scoreloop/client/android/core/controller/UserController$g;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/scoreloop/client/android/core/controller/UserController$g;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V

    .line 508
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 509
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 510
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 511
    return-void
.end method

.method public loadUserContext()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "user context is being held within a null game, therefore it\'s kinda hard to retrieve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/scoreloop/client/android/core/controller/UserController$d;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/scoreloop/client/android/core/controller/UserController$d;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V

    .line 535
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 536
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 537
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 538
    return-void
.end method

.method public loadUserDetail()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    .line 560
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 566
    const/4 v1, 0x0

    .line 567
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    :goto_0
    new-instance v1, Lcom/scoreloop/client/android/core/controller/UserController$f;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/scoreloop/client/android/core/controller/UserController$f;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V

    .line 572
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 573
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 574
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 575
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public removeAsBuddy()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 764
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 767
    new-instance v2, Lcom/scoreloop/client/android/core/controller/UserController$c;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/scoreloop/client/android/core/controller/UserController$c;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V

    .line 768
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 769
    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 770
    return-void
.end method

.method public setUser(Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 791
    if-nez p1, :cond_0

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 804
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-interface {p1}, Lcom/scoreloop/client/android/core/model/Entity;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entity must be of type user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_1
    instance-of v0, p1, Lcom/scoreloop/client/android/core/model/BaseEntity;

    if-nez v0, :cond_2

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "currently Entity objects must be subclasses of BaseEntity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_2
    check-cast p1, Lcom/scoreloop/client/android/core/model/User;

    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/UserController;->c:Lcom/scoreloop/client/android/core/model/User;

    goto :goto_0
.end method

.method public submitUser()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 816
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController$h;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/UserController$h;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V

    .line 817
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 818
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 819
    return-void
.end method

.method public submitUserContext()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trying to put user context into a null game..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 851
    new-instance v1, Lcom/scoreloop/client/android/core/controller/UserController$e;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/scoreloop/client/android/core/controller/UserController$e;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V

    .line 852
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UserController;->a_()V

    .line 853
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 854
    return-void
.end method
