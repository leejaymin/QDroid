.class final LU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT;


# instance fields
.field private a:Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method constructor <init>(Ljava/io/Serializable;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, LU;->a:Ljava/io/Serializable;

    .line 141
    return-void
.end method


# virtual methods
.method final a()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, LU;->a:Ljava/io/Serializable;

    return-object v0
.end method

.method public final a(Ljava/io/FileInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    iput-object v0, p0, LU;->a:Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 171
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/io/FileOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    iget-object v1, p0, LU;->a:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 155
    return-void
.end method
