.class Lmagmamobile/app/SplashActivity$1;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmagmamobile/app/SplashActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmagmamobile/app/SplashActivity;


# direct methods
.method constructor <init>(Lmagmamobile/app/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    invoke-virtual {v2}, Lmagmamobile/app/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "logo.gif"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 108
    .local v1, stream:Ljava/io/InputStream;
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    #setter for: Lmagmamobile/app/SplashActivity;->image:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v2, v3}, Lmagmamobile/app/SplashActivity;->access$0(Lmagmamobile/app/SplashActivity;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    #getter for: Lmagmamobile/app/SplashActivity;->starttime:I
    invoke-static {v2}, Lmagmamobile/app/SplashActivity;->access$1(Lmagmamobile/app/SplashActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_1
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    #getter for: Lmagmamobile/app/SplashActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lmagmamobile/app/SplashActivity;->access$2(Lmagmamobile/app/SplashActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    :try_start_2
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    #getter for: Lmagmamobile/app/SplashActivity;->duration:I
    invoke-static {v2}, Lmagmamobile/app/SplashActivity;->access$3(Lmagmamobile/app/SplashActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    :goto_2
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    #getter for: Lmagmamobile/app/SplashActivity;->cancel:Z
    invoke-static {v2}, Lmagmamobile/app/SplashActivity;->access$4(Lmagmamobile/app/SplashActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    #getter for: Lmagmamobile/app/SplashActivity;->activity:Ljava/lang/Class;
    invoke-static {v2}, Lmagmamobile/app/SplashActivity;->access$5(Lmagmamobile/app/SplashActivity;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    iget-object v5, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    #getter for: Lmagmamobile/app/SplashActivity;->activity:Ljava/lang/Class;
    invoke-static {v5}, Lmagmamobile/app/SplashActivity;->access$5(Lmagmamobile/app/SplashActivity;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lmagmamobile/app/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    :cond_0
    iget-object v2, p0, Lmagmamobile/app/SplashActivity$1;->this$0:Lmagmamobile/app/SplashActivity;

    invoke-virtual {v2}, Lmagmamobile/app/SplashActivity;->finish()V

    .line 153
    return-void

    .line 110
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 129
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 143
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
