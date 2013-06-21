.class public Lcom/scoreloop/client/android/core/model/TermsOfService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/TermsOfService$Status;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Date;

.field private b:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->b:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->b:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    .line 81
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->c:Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method final a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->a:Ljava/util/Date;

    .line 77
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 101
    const-string v0, "version"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->c:Ljava/lang/Integer;

    .line 104
    :cond_0
    const-string v0, "status"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->a(I)Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->b:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    .line 107
    :cond_1
    const-string v0, "date"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->a:Ljava/util/Date;

    .line 110
    :cond_2
    return-void
.end method

.method final b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 90
    const-string v1, "version"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "status"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->b:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    iget v2, v2, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->a:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "date"

    sget-object v2, Lcom/scoreloop/client/android/core/util/Formats;->a:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->a:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_0
    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/TermsOfService;->b:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    return-object v0
.end method
