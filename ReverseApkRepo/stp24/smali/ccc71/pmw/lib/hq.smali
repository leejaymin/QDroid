.class final Lccc71/pmw/lib/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_main;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/hq;->a:Lccc71/pmw/lib/pmw_main;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lccc71/pmw/lib/hq;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_main;->finish()V

    .line 128
    return-void
.end method
