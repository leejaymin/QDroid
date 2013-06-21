.class Lcom/peteguhl/holsterbuddy/HolsterBuddy$1;
.super Ljava/lang/Object;
.source "HolsterBuddy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peteguhl/holsterbuddy/HolsterBuddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;


# direct methods
.method constructor <init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    invoke-static {p2}, Lcom/peteguhl/holsterbuddy/AVRSInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/peteguhl/holsterbuddy/AVRSInterface;

    move-result-object v1

    #setter for: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;
    invoke-static {v0, v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$0(Lcom/peteguhl/holsterbuddy/HolsterBuddy;Lcom/peteguhl/holsterbuddy/AVRSInterface;)V

    .line 50
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->nowThatWeAreBinded()V
    invoke-static {v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$1(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    .line 51
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    const/4 v1, 0x0

    #setter for: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;
    invoke-static {v0, v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$0(Lcom/peteguhl/holsterbuddy/HolsterBuddy;Lcom/peteguhl/holsterbuddy/AVRSInterface;)V

    .line 55
    return-void
.end method
