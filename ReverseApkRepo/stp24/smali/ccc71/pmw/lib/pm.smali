.class final Lccc71/pmw/lib/pm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_voltage_table;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pm;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pm;->a:Lccc71/pmw/lib/pmw_voltage_table;

    const-class v2, Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    const-string v1, "ccc71.pmw.boot_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lccc71/pmw/lib/pm;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_voltage_table;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method
