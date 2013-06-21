.class final Lccc71/utils/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/utils/ccc71_license_activity;


# direct methods
.method constructor <init>(Lccc71/utils/ccc71_license_activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/w;->a:Lccc71/utils/ccc71_license_activity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lccc71/utils/w;->a:Lccc71/utils/ccc71_license_activity;

    invoke-virtual {v0}, Lccc71/utils/ccc71_license_activity;->finish()V

    .line 52
    return-void
.end method
