.class Lexam/service/CalcClient$1;
.super Ljava/lang/Object;
.source "CalcClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/CalcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/CalcClient;


# direct methods
.method constructor <init>(Lexam/service/CalcClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/CalcClient$1;->this$0:Lexam/service/CalcClient;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 59
    iget-object v0, p0, Lexam/service/CalcClient$1;->this$0:Lexam/service/CalcClient;

    invoke-static {p2}, Lexam/service/ICalc$Stub;->asInterface(Landroid/os/IBinder;)Lexam/service/ICalc;

    move-result-object v1

    iput-object v1, v0, Lexam/service/CalcClient;->mCalc:Lexam/service/ICalc;

    .line 60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 63
    iget-object v0, p0, Lexam/service/CalcClient$1;->this$0:Lexam/service/CalcClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lexam/service/CalcClient;->mCalc:Lexam/service/ICalc;

    .line 64
    return-void
.end method
