.class public final Lbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/antispam/ContactsBlocker;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/ContactsBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lbi;->a:Lcom/kms/antispam/ContactsBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lbi;->a:Lcom/kms/antispam/ContactsBlocker;

    invoke-virtual {v0}, Lcom/kms/antispam/ContactsBlocker;->c()I

    .line 286
    return-void
.end method
