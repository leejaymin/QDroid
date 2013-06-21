.class public Lorg/jibx/runtime/EnumSet$EnumItem;
.super Ljava/lang/Object;
.source "EnumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jibx/runtime/EnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumItem"
.end annotation


# instance fields
.field public final m_name:Ljava/lang/String;

.field public final m_value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "name"

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    .line 284
    iput-object p2, p0, Lorg/jibx/runtime/EnumSet$EnumItem;->m_name:Ljava/lang/String;

    .line 285
    return-void
.end method
