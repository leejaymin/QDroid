.class final Lccc71/bmw/lib/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/dw;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dx;->a:Lccc71/bmw/lib/dw;

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1168
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1169
    return-void
.end method
