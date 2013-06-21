.class final Lccc71/pmw/lib/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/gr;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/gr;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gs;->a:Lccc71/pmw/lib/gr;

    iput-object p2, p0, Lccc71/pmw/lib/gs;->b:Landroid/app/AlertDialog;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/gs;)Lccc71/pmw/lib/gr;
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lccc71/pmw/lib/gs;->a:Lccc71/pmw/lib/gr;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lccc71/pmw/lib/gs;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 583
    new-instance v5, Lccc71/pmw/lib/gt;

    invoke-direct {v5, p0}, Lccc71/pmw/lib/gt;-><init>(Lccc71/pmw/lib/gs;)V

    .line 585
    new-instance v0, Lccc71/utils/h;

    iget-object v1, p0, Lccc71/pmw/lib/gs;->a:Lccc71/pmw/lib/gr;

    iget-object v1, v1, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    iget-object v2, p0, Lccc71/pmw/lib/gs;->a:Lccc71/pmw/lib/gr;

    iget-object v2, v2, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    sget v3, Lccc71/pmw/lib/g;->eS:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_logcat;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/gs;->a:Lccc71/pmw/lib/gr;

    iget-object v3, v3, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_settings;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lccc71/utils/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccc71/utils/m;)V

    .line 586
    invoke-virtual {v0}, Lccc71/utils/h;->a()V

    .line 588
    invoke-virtual {v0}, Lccc71/utils/h;->show()V

    .line 589
    return-void
.end method
