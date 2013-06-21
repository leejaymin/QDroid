.class Lcom/scoreloop/client/android/core/controller/f;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/f$b;,
        Lcom/scoreloop/client/android/core/controller/f$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/controller/b;

.field private c:Lcom/scoreloop/client/android/core/server/Request;

.field private final d:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 124
    new-instance v0, Lcom/scoreloop/client/android/core/controller/f$a;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/f$a;-><init>(Lcom/scoreloop/client/android/core/controller/f;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->d:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/f;)Lcom/scoreloop/client/android/core/controller/b;
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->b:Lcom/scoreloop/client/android/core/controller/b;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1f4

    const/16 v10, 0xc8

    const/16 v9, 0x2710

    const/16 v8, 0x1388

    const/16 v7, 0x3e8

    .line 149
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    .line 151
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 152
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    sget-object v3, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 155
    if-eq v0, v10, :cond_0

    const/16 v4, 0xc9

    if-ne v0, v4, :cond_3

    :cond_0
    if-eqz v3, :cond_3

    .line 158
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/model/User;->a(Lorg/json/JSONObject;)V

    .line 160
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->g()V

    .line 164
    invoke-static {v0, v3}, Lcom/scoreloop/client/android/core/model/SocialProvider;->a(Lcom/scoreloop/client/android/core/model/User;Lorg/json/JSONObject;)V

    .line 167
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getEntityFactory()Lcom/scoreloop/client/android/core/model/EntityFactory;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/scoreloop/client/android/core/model/EntityFactory;->a(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 169
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->c()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v9}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/core/model/Money;->compareTo(Lcom/scoreloop/client/android/core/model/Money;)I

    move-result v4

    if-gez v4, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v10}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v11}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v7}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const/16 v6, 0x7d0

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(Ljava/util/List;)V

    .line 171
    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Session;->a(Lorg/json/JSONObject;)V

    .line 173
    sget-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATED:Lcom/scoreloop/client/android/core/model/Session$State;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/Session$State;)V

    .line 180
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const v6, 0x186a0

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/core/model/Money;->compareTo(Lcom/scoreloop/client/android/core/model/Money;)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v11}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v7}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const/16 v6, 0x9c4

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v9}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const/16 v6, 0x4e20

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v7}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const/16 v6, 0x9c4

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v9}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const v6, 0xc350

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v5, Ljava/math/BigDecimal;

    const v6, 0x186a0

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 176
    :cond_3
    sget-object v2, Lcom/scoreloop/client/android/core/model/Session$State;->FAILED:Lcom/scoreloop/client/android/core/model/Session$State;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/Session$State;)V

    .line 177
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session authentication request failed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final a_()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/scoreloop/client/android/core/controller/RequestController;->a_()V

    .line 186
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/server/Server;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    .line 187
    :cond_1
    return-void
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 6

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v2

    .line 210
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->f()Lcom/scoreloop/client/android/core/model/Session$State;

    move-result-object v0

    sget-object v3, Lcom/scoreloop/client/android/core/model/Session$State;->FAILED:Lcom/scoreloop/client/android/core/model/Session$State;

    if-ne v0, v3, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/Device;->b(Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->b:Lcom/scoreloop/client/android/core/controller/b;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/scoreloop/client/android/core/controller/b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/f;->d:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    invoke-direct {v0, v3, v4}, Lcom/scoreloop/client/android/core/controller/b;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->b:Lcom/scoreloop/client/android/core/controller/b;

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->a_()V

    .line 221
    sget-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/Session$State;)V

    .line 224
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 225
    :goto_0
    if-nez v0, :cond_4

    .line 226
    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/f;->b:Lcom/scoreloop/client/android/core/controller/b;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/b;->c()V

    .line 232
    :goto_1
    new-instance v3, Lcom/scoreloop/client/android/core/controller/f$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/scoreloop/client/android/core/controller/f$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;)V

    .line 233
    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/core/controller/f;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 235
    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->b:Lcom/scoreloop/client/android/core/controller/b;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/b;->c()V

    .line 237
    new-instance v0, Lcom/scoreloop/client/android/core/controller/f$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/f;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/scoreloop/client/android/core/controller/f$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    .line 238
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->e()Lcom/scoreloop/client/android/core/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/f;->c:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/server/Server;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 240
    :cond_2
    return-void

    .line 224
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_4
    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/f;->b:Lcom/scoreloop/client/android/core/controller/b;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/b;->b()V

    goto :goto_1
.end method
