.class public final LaN;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:LaM;


# direct methods
.method public constructor <init>(LaM;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 17
    iput-object p1, p0, LaN;->a:LaM;

    .line 18
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LaN;->a:LaM;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, LaN;->a:LaM;

    invoke-interface {v0}, LaM;->a()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, LaN;->a:LaM;

    .line 31
    :cond_0
    return-void
.end method
