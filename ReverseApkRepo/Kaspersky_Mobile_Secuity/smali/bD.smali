.class final LbD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LbC;


# direct methods
.method constructor <init>(LbC;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, LbD;->a:LbC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, LbD;->a:LbC;

    iget-object v0, v0, LbC;->a:Lcom/kms/antispam/gui/CallListActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/CallListActivity;->b(Lcom/kms/antispam/gui/CallListActivity;)V

    .line 202
    return-void
.end method
