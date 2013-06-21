.class Lcom/dakkhin/android/bhadram/Auth$2;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/Auth;->checkLicense()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/Auth;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/Auth;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/Auth$2;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, oStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/Auth$2;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    const-string v2, "lic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/dakkhin/android/bhadram/Auth;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 168
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 174
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 175
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 166
    if-eqz v0, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v1

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    .line 166
    if-eqz v0, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 172
    :cond_1
    :goto_1
    throw v1

    .line 169
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method
