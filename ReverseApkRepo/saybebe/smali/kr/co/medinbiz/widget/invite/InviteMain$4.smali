.class Lkr/co/medinbiz/widget/invite/InviteMain$4;
.super Ljava/lang/Object;
.source "InviteMain.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/invite/InviteMain;->listSort(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lkr/co/medinbiz/dto/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/invite/InviteMain;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$4;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lkr/co/medinbiz/dto/Contact;

    check-cast p2, Lkr/co/medinbiz/dto/Contact;

    invoke-virtual {p0, p1, p2}, Lkr/co/medinbiz/widget/invite/InviteMain$4;->compare(Lkr/co/medinbiz/dto/Contact;Lkr/co/medinbiz/dto/Contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lkr/co/medinbiz/dto/Contact;Lkr/co/medinbiz/dto/Contact;)I
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 410
    invoke-virtual {p1}, Lkr/co/medinbiz/dto/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, data0:Ljava/lang/String;
    invoke-virtual {p2}, Lkr/co/medinbiz/dto/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, data1:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
