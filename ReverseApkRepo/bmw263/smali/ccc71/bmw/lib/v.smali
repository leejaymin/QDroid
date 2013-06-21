.class final Lccc71/bmw/lib/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/t;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/t;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/v;->a:Lccc71/bmw/lib/t;

    iput-object p2, p0, Lccc71/bmw/lib/v;->b:Landroid/widget/EditText;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lccc71/bmw/lib/v;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 782
    return-void
.end method
