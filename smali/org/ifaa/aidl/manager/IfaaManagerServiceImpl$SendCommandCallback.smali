.class Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;
.super Ljava/lang/Object;
.source "IfaaManagerServiceImpl.java"

# interfaces
.implements Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$sendCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendCommandCallback"
.end annotation


# instance fields
.field public mStatus:I

.field public mresult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;-><init>(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput p1, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;->mStatus:I

    .line 154
    iput-object p2, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;->mresult:Ljava/util/ArrayList;

    return-void
.end method
