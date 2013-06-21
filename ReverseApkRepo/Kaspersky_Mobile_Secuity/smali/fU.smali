.class public final LfU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, LfU;->b:Ljava/lang/String;

    .line 184
    iput-object p2, p0, LfU;->c:Ljava/lang/Object;

    .line 185
    return-void
.end method


# virtual methods
.method public final a(Lgi;)V
    .locals 4
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 192
    new-instance v1, Ljava/lang/Boolean;

    iget-object v2, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v0}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, LfU;->a:Ljava/lang/Object;

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 197
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v2, v0}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, LfU;->a:Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 202
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v2, v0}, Lgi;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, LfU;->a:Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfU;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, LfU;->c:Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public final b(Lgi;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 220
    iget-object v1, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 226
    iget-object v1, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v1, v0}, Lgi;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, LfU;->b:Ljava/lang/String;

    iget-object v0, p0, LfU;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
