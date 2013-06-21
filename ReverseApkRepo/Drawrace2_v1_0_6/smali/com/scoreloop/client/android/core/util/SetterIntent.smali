.class public Lcom/scoreloop/client/android/core/util/SetterIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;,
        Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static a(Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    if-ne p0, v0, :cond_1

    .line 55
    const/4 p1, 0x0

    .line 57
    :cond_0
    return-object p1

    .line 56
    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->COERCE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    if-eq p0, v0, :cond_0

    .line 59
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid value"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    sget-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    if-ne p2, v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_AND_COERCES_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    if-ne p2, v0, :cond_1

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/Boolean;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    .line 108
    iput-object p2, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->c:Ljava/lang/Boolean;

    .line 110
    iput-object p3, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->b:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V

    .line 127
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    return v0

    .line 122
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, v1, v2, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p3, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/scoreloop/client/android/core/util/Formats;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    return v0

    :catch_0
    move-exception v1

    .line 138
    :try_start_1
    sget-object v1, Lcom/scoreloop/client/android/core/util/Formats;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v1

    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Invalid format of the %s date: \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, v4, v1, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Long;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V

    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 68
    :goto_1
    return-object v0

    .line 65
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V

    .line 162
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    return v0

    .line 157
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2, p4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-static {p3, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V

    .line 175
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    return v0

    .line 170
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0, v1, v2, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V

    .line 188
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    return v0

    .line 183
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V

    .line 201
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    return v0

    .line 196
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v0, ""

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    .line 232
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/util/SetterIntent;->a:Z

    return v0

    .line 224
    :cond_0
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0, p3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Ljava/lang/Object;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)V

    goto :goto_0

    .line 230
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(ZLjava/lang/Boolean;Ljava/lang/Object;)V

    goto :goto_0
.end method
