.class Lcom/peteguhl/holsterbuddy/HolsterBuddyService$1;
.super Landroid/telephony/PhoneStateListener;
.source "HolsterBuddyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peteguhl/holsterbuddy/HolsterBuddyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;


# direct methods
.method constructor <init>(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    .line 255
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 258
    if-ne p1, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iput-boolean v1, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->phoneStateChanged:Z

    .line 267
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-virtual {v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->unregisterListeners()V

    .line 268
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$1;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-virtual {v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->registerListeners()V

    .line 270
    :cond_0
    return-void
.end method
