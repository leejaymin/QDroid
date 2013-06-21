.class public final Lei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lej;


# instance fields
.field private synthetic a:Lcom/kms/gui/WelcomeActivity;


# direct methods
.method synthetic constructor <init>(Lcom/kms/gui/WelcomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lei;-><init>(Lcom/kms/gui/WelcomeActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/WelcomeActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lei;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lei;->a:Lcom/kms/gui/WelcomeActivity;

    invoke-static {v0}, Lcom/kms/gui/WelcomeActivity;->a(Lcom/kms/gui/WelcomeActivity;)V

    .line 52
    iget-object v0, p0, Lei;->a:Lcom/kms/gui/WelcomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kms/gui/WelcomeActivity;->a(Lcom/kms/gui/WelcomeActivity;Z)V

    .line 53
    const/16 v0, 0x64

    return v0
.end method
