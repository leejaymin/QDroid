.class public Lcom/superdroid/util/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static EMPTY:Lcom/superdroid/util/ContactInfo;


# instance fields
.field public formattedNumber:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public personId:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/superdroid/util/ContactInfo;

    invoke-direct {v0}, Lcom/superdroid/util/ContactInfo;-><init>()V

    sput-object v0, Lcom/superdroid/util/ContactInfo;->EMPTY:Lcom/superdroid/util/ContactInfo;

    .line 2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
