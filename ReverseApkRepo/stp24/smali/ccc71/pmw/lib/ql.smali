.class final Lccc71/pmw/lib/ql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ql;->a:Landroid/content/Context;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lccc71/pmw/lib/ql;->a:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    .line 340
    return-void
.end method
