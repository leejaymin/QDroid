.class final Lcom/scoreloop/client/android/core/controller/b;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/b$1;,
        Lcom/scoreloop/client/android/core/controller/b$b;,
        Lcom/scoreloop/client/android/core/controller/b$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/server/Request;

.field private c:Lcom/scoreloop/client/android/core/model/Device;

.field private d:Lcom/scoreloop/client/android/core/server/Request;

.field private e:Lcom/scoreloop/client/android/core/server/Request;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 126
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    .line 128
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Device;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reusing device id from DeviceIdStore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->d(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 246
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Device;->b(Ljava/lang/String;)V

    .line 250
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    return-void
.end method

.method private static c(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;
    .locals 1
    .parameter

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Request;->n()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static d(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;
    .locals 1
    .parameter

    .prologue
    .line 220
    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Request;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {p0}, Lcom/scoreloop/client/android/core/server/Server;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 226
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x194

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v3

    .line 159
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v4, Lcom/scoreloop/client/android/core/model/Device;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 160
    check-cast p1, Lcom/scoreloop/client/android/core/controller/b$a;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/b$a;->d()Lcom/scoreloop/client/android/core/controller/b$b;

    move-result-object v5

    .line 161
    const/16 v0, 0xc8

    if-eq v3, v0, :cond_0

    const/16 v0, 0xc9

    if-ne v3, v0, :cond_1

    :cond_0
    if-eqz v4, :cond_1

    move v0, v2

    .line 163
    :goto_0
    sget-object v6, Lcom/scoreloop/client/android/core/controller/b$1;->a:[I

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/b$b;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    move v2, v1

    .line 203
    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 161
    goto :goto_0

    .line 165
    :pswitch_0
    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->c(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 167
    invoke-direct {p0, v4}, Lcom/scoreloop/client/android/core/controller/b;->b(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/Device;->b(Ljava/lang/String;)V

    .line 173
    if-ne v3, v7, :cond_3

    .line 174
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->c(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    move v2, v1

    .line 175
    goto :goto_1

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->c(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    .line 178
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->c(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 179
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify request failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_1
    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->c(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 185
    invoke-direct {p0, v4}, Lcom/scoreloop/client/android/core/controller/b;->b(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 188
    :cond_4
    if-ne v3, v7, :cond_5

    move v2, v1

    .line 189
    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->c(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 192
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update request failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_2
    if-eqz v0, :cond_6

    .line 197
    invoke-direct {p0, v4}, Lcom/scoreloop/client/android/core/controller/b;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 200
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create request failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final a_()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->e:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->d(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->e:Lcom/scoreloop/client/android/core/server/Request;

    .line 212
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->d(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    .line 213
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/b;->d(Lcom/scoreloop/client/android/core/server/Request;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 216
    invoke-super {p0}, Lcom/scoreloop/client/android/core/controller/RequestController;->a_()V

    .line 217
    return-void
.end method

.method final b()V
    .locals 5

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->a_()V

    .line 237
    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    sget-object v4, Lcom/scoreloop/client/android/core/controller/b$b;->UPDATE:Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/b$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/controller/b$b;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    .line 238
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/b;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 241
    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    sget-object v4, Lcom/scoreloop/client/android/core/controller/b$b;->CREATE:Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/b$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/controller/b$b;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 242
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/b;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 243
    return-void
.end method

.method final c()V
    .locals 5

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->a_()V

    .line 262
    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    sget-object v4, Lcom/scoreloop/client/android/core/controller/b$b;->VERIFY:Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/b$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/controller/b$b;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->e:Lcom/scoreloop/client/android/core/server/Request;

    .line 263
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->e:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/b;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 266
    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    sget-object v4, Lcom/scoreloop/client/android/core/controller/b$b;->UPDATE:Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/b$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/controller/b$b;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    .line 267
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->d:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/b;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 270
    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/b;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/b;->c:Lcom/scoreloop/client/android/core/model/Device;

    sget-object v4, Lcom/scoreloop/client/android/core/controller/b$b;->CREATE:Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/b$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/controller/b$b;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 271
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b;->b:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/b;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 272
    return-void
.end method
