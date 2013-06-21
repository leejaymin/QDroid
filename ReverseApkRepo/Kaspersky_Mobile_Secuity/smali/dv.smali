.class final Ldv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ldt;


# direct methods
.method constructor <init>(Ldt;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Ldv;->a:Ldt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Ldv;->a:Ldt;

    invoke-virtual {v0}, Ldt;->dismiss()V

    .line 76
    return-void
.end method
