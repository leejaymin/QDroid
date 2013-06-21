.class public Lcom/chillingo/crystal/NavigationState$ScreenState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/NavigationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenState"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public url:Ljava/lang/String;

.field public viewToDisplay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
