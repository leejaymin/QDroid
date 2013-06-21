.class final LbF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LbE;


# direct methods
.method constructor <init>(LbE;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, LbF;->a:LbE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, LbF;->a:LbE;

    iget-object v0, v0, LbE;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->b(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)V

    .line 152
    return-void
.end method
