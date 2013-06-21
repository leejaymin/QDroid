.class public Lcom/scoreloop/client/android/core/model/User;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/MessageTargetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/User$b;,
        Lcom/scoreloop/client/android/core/model/User$Gender;,
        Lcom/scoreloop/client/android/core/model/User$Details;,
        Lcom/scoreloop/client/android/core/model/User$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/model/User$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/scoreloop/client/android/core/model/Activity;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/SearchList;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/Integer;

.field private final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/scoreloop/client/android/core/model/User$b;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Long;

.field private n:Ljava/util/Date;

.field private final o:Lcom/scoreloop/client/android/core/model/User$Details;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Integer;

.field private t:Lcom/scoreloop/client/android/core/model/User$Gender;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 219
    const-string v0, "user"

    sput-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    sput-object v0, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    const-string v1, "anonymous"

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$b;->anonymous:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    const-string v1, "active"

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$b;->active:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    const-string v1, "deleted"

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$b;->deleted:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    const-string v1, "passive"

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$b;->passive:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    const-string v1, "pending"

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$b;->pending:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    const-string v1, "suspended"

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$b;->suspended:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/model/User;->q:Z

    .line 293
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->UNKNOWN:Lcom/scoreloop/client/android/core/model/User$Gender;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->t:Lcom/scoreloop/client/android/core/model/User$Gender;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->G:Ljava/util/Map;

    .line 314
    new-instance v0, Lcom/scoreloop/client/android/core/model/User$Details;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/User$Details;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->o:Lcom/scoreloop/client/android/core/model/User$Details;

    .line 315
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/model/User;->q:Z

    .line 293
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->UNKNOWN:Lcom/scoreloop/client/android/core/model/User$Gender;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->t:Lcom/scoreloop/client/android/core/model/User$Gender;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->G:Ljava/util/Map;

    .line 324
    new-instance v0, Lcom/scoreloop/client/android/core/model/User$Details;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/User$Details;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->o:Lcom/scoreloop/client/android/core/model/User$Details;

    .line 325
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/User;-><init>()V

    .line 319
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/User;->a(Lorg/json/JSONObject;)V

    .line 320
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->w:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->m:Ljava/lang/Long;

    .line 796
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    const-string v0, "[empty user]"

    .line 337
    :cond_0
    :goto_0
    const-string v1, "name"

    invoke-static {p1, v1, v0}, Lcom/scoreloop/client/android/core/model/User;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 956
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 958
    new-instance v3, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 960
    const-string v0, "login"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/User;->setLogin(Ljava/lang/String;)V

    .line 963
    :cond_0
    const-string v0, "email"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->r:Ljava/lang/String;

    .line 967
    :cond_1
    const-string v0, "state"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 969
    sget-object v1, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 970
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not parse json representation of User due to unknown state given: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 974
    :cond_2
    sget-object v1, Lcom/scoreloop/client/android/core/model/User;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User$b;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->H:Lcom/scoreloop/client/android/core/model/User$b;

    .line 976
    :cond_3
    const-string v0, "device_id"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 977
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->p:Ljava/lang/String;

    .line 984
    :cond_4
    const-string v0, "gender"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 985
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 986
    const-string v1, "m"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 987
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->MALE:Lcom/scoreloop/client/android/core/model/User$Gender;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->t:Lcom/scoreloop/client/android/core/model/User$Gender;

    .line 995
    :cond_5
    :goto_0
    const-string v0, "date_of_birth"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 996
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->n:Ljava/util/Date;

    .line 999
    :cond_6
    const-string v0, "balance"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1000
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1002
    const-string v1, "amount"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->h:Ljava/lang/Integer;

    .line 1004
    const-string v1, "currency"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->i:Ljava/lang/String;

    .line 1008
    :cond_7
    const-string v0, "avatar"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1009
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1011
    const-string v1, "head"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->g:Ljava/lang/String;

    .line 1013
    const-string v1, "hair"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->f:Ljava/lang/String;

    .line 1015
    const-string v1, "body"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->e:Ljava/lang/String;

    .line 1019
    :cond_8
    invoke-static {p0, p1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->b(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V

    .line 1021
    const-string v0, "skill"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1022
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "value"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->F:Ljava/lang/Integer;

    .line 1026
    :cond_9
    const-string v0, "agility"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1027
    new-instance v1, Lcom/scoreloop/client/android/core/model/User$a;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/model/User$a;-><init>(Lorg/json/JSONObject;)V

    .line 1029
    :cond_a
    const-string v0, "strategy"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1030
    new-instance v1, Lcom/scoreloop/client/android/core/model/User$a;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/model/User$a;-><init>(Lorg/json/JSONObject;)V

    .line 1032
    :cond_b
    const-string v0, "knowledge"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1033
    new-instance v1, Lcom/scoreloop/client/android/core/model/User$a;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/model/User$a;-><init>(Lorg/json/JSONObject;)V

    .line 1036
    :cond_c
    const-string v0, "score_lists"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->e(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1037
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 1038
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1039
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 1040
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1041
    new-instance v6, Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-direct {v6, v5}, Lcom/scoreloop/client/android/core/model/SearchList;-><init>(Lorg/json/JSONObject;)V

    .line 1042
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 988
    :cond_d
    const-string v1, "f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 989
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->FEMALE:Lcom/scoreloop/client/android/core/model/User$Gender;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->t:Lcom/scoreloop/client/android/core/model/User$Gender;

    goto/16 :goto_0

    .line 991
    :cond_e
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$Gender;->UNKNOWN:Lcom/scoreloop/client/android/core/model/User$Gender;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->t:Lcom/scoreloop/client/android/core/model/User$Gender;

    goto/16 :goto_0

    .line 1044
    :cond_f
    iput-object v4, p0, Lcom/scoreloop/client/android/core/model/User;->E:Ljava/util/List;

    .line 1047
    :cond_10
    const-string v0, "challenge_lists"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->e(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1048
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 1049
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1050
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_11

    .line 1051
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1052
    new-instance v6, Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-direct {v6, v5}, Lcom/scoreloop/client/android/core/model/SearchList;-><init>(Lorg/json/JSONObject;)V

    .line 1053
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1055
    :cond_11
    const-string v0, "last_active_at"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1059
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->z:Ljava/util/Date;

    .line 1062
    :cond_12
    const-string v0, "last_activity"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1063
    new-instance v1, Lcom/scoreloop/client/android/core/model/Activity;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/model/Activity;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->A:Lcom/scoreloop/client/android/core/model/Activity;

    .line 1066
    :cond_13
    const-string v0, "nationality"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1067
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->C:Ljava/lang/String;

    .line 1070
    :cond_14
    const-string v0, "buddies"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->e(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1071
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 1072
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1073
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_15

    .line 1074
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1075
    new-instance v6, Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v6, v5}, Lcom/scoreloop/client/android/core/model/User;-><init>(Lorg/json/JSONObject;)V

    .line 1076
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1078
    :cond_15
    iput-object v4, p0, Lcom/scoreloop/client/android/core/model/User;->k:Ljava/util/List;

    .line 1081
    :cond_16
    const-string v0, "image"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_17

    .line 1084
    const-string v1, "source"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->x:Ljava/lang/String;

    .line 1086
    const-string v1, "url"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->y:Ljava/lang/String;

    .line 1088
    :cond_17
    iget-boolean v1, p0, Lcom/scoreloop/client/android/core/model/User;->q:Z

    if-eqz v1, :cond_18

    if-eqz v0, :cond_19

    :cond_18
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getImageSource()Lcom/scoreloop/client/android/core/model/ImageSource;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_DEFAULT:Lcom/scoreloop/client/android/core/model/ImageSource;

    if-ne v0, v1, :cond_1a

    .line 1089
    :cond_19
    iput-object v7, p0, Lcom/scoreloop/client/android/core/model/User;->x:Ljava/lang/String;

    .line 1090
    iput-object v7, p0, Lcom/scoreloop/client/android/core/model/User;->y:Ljava/lang/String;

    .line 1092
    :cond_1a
    iput-boolean v2, p0, Lcom/scoreloop/client/android/core/model/User;->q:Z

    .line 1097
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->o:Lcom/scoreloop/client/android/core/model/User$Details;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/User$Details;->a(Lorg/json/JSONObject;)V

    .line 1109
    const-string v0, "games_counter"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1110
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->s:Ljava/lang/Integer;

    .line 1112
    :cond_1b
    const-string v0, "buddies_counter"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1113
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->j:Ljava/lang/Integer;

    .line 1115
    :cond_1c
    const-string v0, "global_achievements_counter"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v3, p1, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1116
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->u:Ljava/lang/Integer;

    .line 1118
    :cond_1d
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 882
    if-eqz p1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->G:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->G:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public assignImage(Lcom/scoreloop/client/android/core/model/Image;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Image;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/model/User$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/core/model/User$1;-><init>(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Image;Lcom/scoreloop/client/android/core/model/Continuation;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/scoreloop/client/android/core/model/Image;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 372
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 827
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/model/User;->q:Z

    .line 1122
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/User;->a(Lorg/json/JSONObject;)V

    .line 1123
    return-void
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 892
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v0

    .line 897
    const-string v1, "login"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 898
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    const-string v1, "password"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    const-string v1, "password_confirmation"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    const-string v1, "email"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 906
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->t:Lcom/scoreloop/client/android/core/model/User$Gender;

    sget-object v2, Lcom/scoreloop/client/android/core/model/User$Gender;->UNKNOWN:Lcom/scoreloop/client/android/core/model/User$Gender;

    if-eq v1, v2, :cond_0

    .line 907
    const-string v1, "gender"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->t:Lcom/scoreloop/client/android/core/model/User$Gender;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User$Gender;->getJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->n:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 911
    const-string v1, "date_of_birth"

    sget-object v2, Lcom/scoreloop/client/android/core/util/Formats;->b:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->n:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 914
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 915
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 916
    const-string v2, "avatar"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 918
    const-string v2, "hair"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    :cond_3
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 921
    const-string v2, "head"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    :cond_4
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 924
    const-string v2, "body"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    :cond_5
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->C:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 929
    const-string v1, "nationality"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/User;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 933
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getImageSource()Lcom/scoreloop/client/android/core/model/ImageSource;

    move-result-object v2

    .line 934
    sget-object v3, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_SCORELOOP:Lcom/scoreloop/client/android/core/model/ImageSource;

    if-ne v2, v3, :cond_8

    .line 935
    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->v:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->w:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 936
    const-string v3, "source"

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/model/ImageSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 937
    const-string v2, "data"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 939
    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    iput-object v4, p0, Lcom/scoreloop/client/android/core/model/User;->v:Ljava/lang/String;

    .line 941
    iput-object v4, p0, Lcom/scoreloop/client/android/core/model/User;->w:Ljava/lang/String;

    .line 948
    :cond_7
    :goto_0
    invoke-static {p0, v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->c(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V

    .line 950
    return-object v0

    .line 943
    :cond_8
    if-eqz v2, :cond_7

    .line 944
    const-string v3, "source"

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/model/ImageSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public final c()Lcom/scoreloop/client/android/core/model/Money;
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 399
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/model/Money;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/Money;->getApplicationCurrencyCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 401
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/model/Money;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->i:Ljava/lang/String;

    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/User;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->m:Ljava/lang/Long;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->p:Ljava/lang/String;

    .line 811
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 376
    if-nez p1, :cond_0

    move v0, v1

    .line 394
    :goto_0
    return v0

    .line 379
    :cond_0
    if-ne p1, p0, :cond_1

    move v0, v2

    .line 380
    goto :goto_0

    .line 382
    :cond_1
    instance-of v0, p1, Lcom/scoreloop/client/android/core/model/User;

    if-nez v0, :cond_2

    .line 383
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 386
    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    .line 387
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 388
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/SearchList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->E:Ljava/util/List;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/model/User;->d:Z

    .line 781
    return-void
.end method

.method public getBuddiesCounter()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBuddyUsers()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->k:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->l:Ljava/util/Map;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->n:Ljava/util/Date;

    return-object v0
.end method

.method public getDetail()Lcom/scoreloop/client/android/core/model/User$Details;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->o:Lcom/scoreloop/client/android/core/model/User$Details;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 515
    const-string v0, "unknown"

    .line 516
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->B:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->B:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->B:Ljava/lang/String;

    .line 521
    :cond_0
    :goto_0
    return-object v0

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->r:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->r:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getGamesCounter()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->s:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGlobalAchievementsCounter()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->u:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImageSource()Lcom/scoreloop/client/android/core/model/ImageSource;
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 566
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->x:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_DEFAULT:Lcom/scoreloop/client/android/core/model/ImageSource;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/model/ImageSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_DEFAULT:Lcom/scoreloop/client/android/core/model/ImageSource;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_SCORELOOP:Lcom/scoreloop/client/android/core/model/ImageSource;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/model/ImageSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_SCORELOOP:Lcom/scoreloop/client/android/core/model/ImageSource;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSupportedProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SocialProvider;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActiveAt()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->z:Ljava/util/Date;

    return-object v0
.end method

.method public getLastActivity()Lcom/scoreloop/client/android/core/model/Activity;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->A:Lcom/scoreloop/client/android/core/model/Activity;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getSkillValue()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->F:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->hashCode()I

    move-result v0

    .line 677
    :goto_0
    return v0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v0

    .line 674
    if-nez v0, :cond_1

    .line 675
    const-string v0, ""

    .line 677
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 699
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$b;->active:Lcom/scoreloop/client/android/core/model/User$b;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->H:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAnonymous()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 718
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$b;->anonymous:Lcom/scoreloop/client/android/core/model/User$b;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->H:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/model/User;->d:Z

    return v0
.end method

.method public isChallengable()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->isAnonymous()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->isPassive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/User;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassive()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 761
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$b;->passive:Lcom/scoreloop/client/android/core/model/User$b;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->H:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPending()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 775
    sget-object v0, Lcom/scoreloop/client/android/core/model/User$b;->pending:Lcom/scoreloop/client/android/core/model/User$b;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User;->H:Lcom/scoreloop/client/android/core/model/User$b;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContext(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 790
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->l:Ljava/util/Map;

    .line 791
    return-void
.end method

.method public setDateOfBirth(Ljava/util/Date;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 805
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->n:Ljava/util/Date;

    .line 806
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 821
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->r:Ljava/lang/String;

    .line 822
    return-void
.end method

.method public setImageSource(Lcom/scoreloop/client/android/core/model/ImageSource;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 832
    if-nez p1, :cond_0

    .line 833
    sget-object v0, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_DEFAULT:Lcom/scoreloop/client/android/core/model/ImageSource;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/model/ImageSource;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->x:Ljava/lang/String;

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-interface {p1}, Lcom/scoreloop/client/android/core/model/ImageSource;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public setImageSource(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 841
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->x:Ljava/lang/String;

    .line 842
    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 855
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->B:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 864
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 865
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 867
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/User;->C:Ljava/lang/String;

    .line 868
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 878
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User;->D:Ljava/lang/String;

    .line 879
    return-void
.end method
