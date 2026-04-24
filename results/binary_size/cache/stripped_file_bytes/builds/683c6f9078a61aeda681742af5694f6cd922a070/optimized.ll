; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4pq0hl3x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.m1 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.m = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d%d%d\0A\00", align 1
@str.6 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.7 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %0, 0
  br i1 %cmp47, label %for.body, label %for.end92

for.body:                                         ; preds = %entry, %if.end89
  %i.048 = phi i32 [ %inc91, %if.end89 ], [ 0, %entry ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4.not = icmp ne i32 %rem3, 0
  %or.cond.not31 = and i1 %cmp2, %cmp4.not
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond30 = or i1 %cmp6, %or.cond.not31
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %4 = load i32, ptr %b, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %3, %4
  br i1 %or.cond30, label %if.then, label %if.else43

if.then:                                          ; preds = %for.body
  br i1 %cmp7, label %for.cond9.preheader, label %if.else19

for.cond9.preheader:                              ; preds = %if.then
  %sub = sub nsw i32 %3, %4
  %cmp1043 = icmp sgt i32 %sub, 0
  br i1 %cmp1043, label %for.body11.lr.ph, label %if.end89.sink.split

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %add = add i32 %4, -1
  %wide.trip.count63 = zext nneg i32 %sub to i64
  %min.iters.check = icmp ult i32 %sub, 12
  br i1 %min.iters.check, label %for.body11.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body11.lr.ph
  %5 = add nsw i64 %wide.trip.count63, -1
  %6 = add i32 %4, -1
  %7 = trunc nsw i64 %5 to i32
  %8 = add i32 %6, %7
  %9 = icmp slt i32 %8, %6
  %10 = icmp ugt i64 %5, 4294967295
  %11 = or i1 %9, %10
  br i1 %11, label %for.body11.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count63, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %16, %vector.body ]
  %12 = trunc i64 %index to i32
  %13 = add i32 %add, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [12 x i32], ptr @__const.main.m, i64 0, i64 %14
  %wide.load = load <4 x i32>, ptr %15, align 4, !tbaa !5
  %16 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %18 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %16)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count63
  br i1 %cmp.n, label %for.end, label %for.body11.preheader

for.body11.preheader:                             ; preds = %vector.scevcheck, %for.body11.lr.ph, %middle.block
  %indvars.iv60.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body11.lr.ph ], [ %n.vec, %middle.block ]
  %c.045.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %for.body11.lr.ph ], [ %18, %middle.block ]
  br label %for.body11

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body11 ], [ %indvars.iv60.ph, %for.body11.preheader ]
  %c.045 = phi i32 [ %add13, %for.body11 ], [ %c.045.ph, %for.body11.preheader ]
  %19 = trunc nuw nsw i64 %indvars.iv60 to i32
  %sub12 = add i32 %add, %19
  %idxprom = sext i32 %sub12 to i64
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.m, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add13 = add nsw i32 %20, %c.045
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %for.end, label %for.body11, !llvm.loop !14

for.end:                                          ; preds = %for.body11, %middle.block
  %add13.lcssa = phi i32 [ %18, %middle.block ], [ %add13, %for.body11 ]
  %21 = srem i32 %add13.lcssa, 7
  %22 = icmp eq i32 %21, 0
  %spec.select = select i1 %22, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.else19:                                        ; preds = %if.then
  %cmp20 = icmp slt i32 %3, %4
  br i1 %cmp20, label %for.cond22.preheader, label %if.end89

for.cond22.preheader:                             ; preds = %if.else19
  %sub23 = sub nsw i32 %4, %3
  %cmp2439 = icmp sgt i32 %sub23, 0
  br i1 %cmp2439, label %for.body25.lr.ph, label %if.end89.sink.split

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %add26 = add i32 %3, -1
  %wide.trip.count58 = zext nneg i32 %sub23 to i64
  %min.iters.check74 = icmp ult i32 %sub23, 12
  br i1 %min.iters.check74, label %for.body25.preheader, label %vector.scevcheck72

vector.scevcheck72:                               ; preds = %for.body25.lr.ph
  %23 = add nsw i64 %wide.trip.count58, -1
  %24 = add i32 %3, -1
  %25 = trunc nsw i64 %23 to i32
  %26 = add i32 %24, %25
  %27 = icmp slt i32 %26, %24
  %28 = icmp ugt i64 %23, 4294967295
  %29 = or i1 %27, %28
  br i1 %29, label %for.body25.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.scevcheck72
  %n.vec77 = and i64 %wide.trip.count58, 2147483644
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph75
  %index79 = phi i64 [ 0, %vector.ph75 ], [ %index.next82, %vector.body78 ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %34, %vector.body78 ]
  %30 = trunc i64 %index79 to i32
  %31 = add i32 %add26, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [12 x i32], ptr @__const.main.m, i64 0, i64 %32
  %wide.load81 = load <4 x i32>, ptr %33, align 4, !tbaa !5
  %34 = add <4 x i32> %wide.load81, %vec.phi80
  %index.next82 = add nuw i64 %index79, 4
  %35 = icmp eq i64 %index.next82, %n.vec77
  br i1 %35, label %middle.block83, label %vector.body78, !llvm.loop !15

middle.block83:                                   ; preds = %vector.body78
  %36 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %34)
  %cmp.n84 = icmp eq i64 %n.vec77, %wide.trip.count58
  br i1 %cmp.n84, label %for.end33, label %for.body25.preheader

for.body25.preheader:                             ; preds = %vector.scevcheck72, %for.body25.lr.ph, %middle.block83
  %indvars.iv55.ph = phi i64 [ 0, %vector.scevcheck72 ], [ 0, %for.body25.lr.ph ], [ %n.vec77, %middle.block83 ]
  %c.141.ph = phi i32 [ 0, %vector.scevcheck72 ], [ 0, %for.body25.lr.ph ], [ %36, %middle.block83 ]
  br label %for.body25

for.body25:                                       ; preds = %for.body25.preheader, %for.body25
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body25 ], [ %indvars.iv55.ph, %for.body25.preheader ]
  %c.141 = phi i32 [ %add30, %for.body25 ], [ %c.141.ph, %for.body25.preheader ]
  %37 = trunc nuw nsw i64 %indvars.iv55 to i32
  %sub27 = add i32 %add26, %37
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [12 x i32], ptr @__const.main.m, i64 0, i64 %idxprom28
  %38 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %add30 = add nsw i32 %38, %c.141
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %for.end33, label %for.body25, !llvm.loop !16

for.end33:                                        ; preds = %for.body25, %middle.block83
  %add30.lcssa = phi i32 [ %36, %middle.block83 ], [ %add30, %for.body25 ]
  %39 = srem i32 %add30.lcssa, 7
  %40 = icmp eq i32 %39, 0
  %spec.select69 = select i1 %40, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.else43:                                        ; preds = %for.body
  br i1 %cmp7, label %for.cond46.preheader, label %if.else65

for.cond46.preheader:                             ; preds = %if.else43
  %sub47 = sub nsw i32 %3, %4
  %cmp4835 = icmp sgt i32 %sub47, 0
  br i1 %cmp4835, label %for.body49.lr.ph, label %if.end89.sink.split

for.body49.lr.ph:                                 ; preds = %for.cond46.preheader
  %add50 = add i32 %4, -1
  %wide.trip.count53 = zext nneg i32 %sub47 to i64
  %min.iters.check89 = icmp ult i32 %sub47, 12
  br i1 %min.iters.check89, label %for.body49.preheader, label %vector.scevcheck87

vector.scevcheck87:                               ; preds = %for.body49.lr.ph
  %41 = add nsw i64 %wide.trip.count53, -1
  %42 = add i32 %4, -1
  %43 = trunc nsw i64 %41 to i32
  %44 = add i32 %42, %43
  %45 = icmp slt i32 %44, %42
  %46 = icmp ugt i64 %41, 4294967295
  %47 = or i1 %45, %46
  br i1 %47, label %for.body49.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.scevcheck87
  %n.vec92 = and i64 %wide.trip.count53, 2147483644
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph90
  %index94 = phi i64 [ 0, %vector.ph90 ], [ %index.next97, %vector.body93 ]
  %vec.phi95 = phi <4 x i32> [ zeroinitializer, %vector.ph90 ], [ %52, %vector.body93 ]
  %48 = trunc i64 %index94 to i32
  %49 = add i32 %add50, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [12 x i32], ptr @__const.main.m1, i64 0, i64 %50
  %wide.load96 = load <4 x i32>, ptr %51, align 4, !tbaa !5
  %52 = add <4 x i32> %wide.load96, %vec.phi95
  %index.next97 = add nuw i64 %index94, 4
  %53 = icmp eq i64 %index.next97, %n.vec92
  br i1 %53, label %middle.block98, label %vector.body93, !llvm.loop !17

middle.block98:                                   ; preds = %vector.body93
  %54 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %52)
  %cmp.n99 = icmp eq i64 %n.vec92, %wide.trip.count53
  br i1 %cmp.n99, label %for.end57, label %for.body49.preheader

for.body49.preheader:                             ; preds = %vector.scevcheck87, %for.body49.lr.ph, %middle.block98
  %indvars.iv50.ph = phi i64 [ 0, %vector.scevcheck87 ], [ 0, %for.body49.lr.ph ], [ %n.vec92, %middle.block98 ]
  %c.237.ph = phi i32 [ 0, %vector.scevcheck87 ], [ 0, %for.body49.lr.ph ], [ %54, %middle.block98 ]
  br label %for.body49

for.body49:                                       ; preds = %for.body49.preheader, %for.body49
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body49 ], [ %indvars.iv50.ph, %for.body49.preheader ]
  %c.237 = phi i32 [ %add54, %for.body49 ], [ %c.237.ph, %for.body49.preheader ]
  %55 = trunc nuw nsw i64 %indvars.iv50 to i32
  %sub51 = add i32 %add50, %55
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds [12 x i32], ptr @__const.main.m1, i64 0, i64 %idxprom52
  %56 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %add54 = add nsw i32 %56, %c.237
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %for.end57, label %for.body49, !llvm.loop !18

for.end57:                                        ; preds = %for.body49, %middle.block98
  %add54.lcssa = phi i32 [ %54, %middle.block98 ], [ %add54, %for.body49 ]
  %57 = srem i32 %add54.lcssa, 7
  %58 = icmp eq i32 %57, 0
  %spec.select70 = select i1 %58, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.else65:                                        ; preds = %if.else43
  %cmp66 = icmp slt i32 %3, %4
  br i1 %cmp66, label %for.cond68.preheader, label %if.end89

for.cond68.preheader:                             ; preds = %if.else65
  %sub69 = sub nsw i32 %4, %3
  %cmp7032 = icmp sgt i32 %sub69, 0
  br i1 %cmp7032, label %for.body71.lr.ph, label %if.end89.sink.split

for.body71.lr.ph:                                 ; preds = %for.cond68.preheader
  %add72 = add i32 %3, -1
  %wide.trip.count = zext nneg i32 %sub69 to i64
  %min.iters.check104 = icmp ult i32 %sub69, 12
  br i1 %min.iters.check104, label %for.body71.preheader, label %vector.scevcheck102

vector.scevcheck102:                              ; preds = %for.body71.lr.ph
  %59 = add nsw i64 %wide.trip.count, -1
  %60 = add i32 %3, -1
  %61 = trunc nsw i64 %59 to i32
  %62 = add i32 %60, %61
  %63 = icmp slt i32 %62, %60
  %64 = icmp ugt i64 %59, 4294967295
  %65 = or i1 %63, %64
  br i1 %65, label %for.body71.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.scevcheck102
  %n.vec107 = and i64 %wide.trip.count, 2147483644
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph105
  %index109 = phi i64 [ 0, %vector.ph105 ], [ %index.next112, %vector.body108 ]
  %vec.phi110 = phi <4 x i32> [ zeroinitializer, %vector.ph105 ], [ %70, %vector.body108 ]
  %66 = trunc i64 %index109 to i32
  %67 = add i32 %add72, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [12 x i32], ptr @__const.main.m1, i64 0, i64 %68
  %wide.load111 = load <4 x i32>, ptr %69, align 4, !tbaa !5
  %70 = add <4 x i32> %wide.load111, %vec.phi110
  %index.next112 = add nuw i64 %index109, 4
  %71 = icmp eq i64 %index.next112, %n.vec107
  br i1 %71, label %middle.block113, label %vector.body108, !llvm.loop !19

middle.block113:                                  ; preds = %vector.body108
  %72 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %70)
  %cmp.n114 = icmp eq i64 %n.vec107, %wide.trip.count
  br i1 %cmp.n114, label %for.end79, label %for.body71.preheader

for.body71.preheader:                             ; preds = %vector.scevcheck102, %for.body71.lr.ph, %middle.block113
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck102 ], [ 0, %for.body71.lr.ph ], [ %n.vec107, %middle.block113 ]
  %c.334.ph = phi i32 [ 0, %vector.scevcheck102 ], [ 0, %for.body71.lr.ph ], [ %72, %middle.block113 ]
  br label %for.body71

for.body71:                                       ; preds = %for.body71.preheader, %for.body71
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body71 ], [ %indvars.iv.ph, %for.body71.preheader ]
  %c.334 = phi i32 [ %add76, %for.body71 ], [ %c.334.ph, %for.body71.preheader ]
  %73 = trunc nuw nsw i64 %indvars.iv to i32
  %sub73 = add i32 %add72, %73
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [12 x i32], ptr @__const.main.m1, i64 0, i64 %idxprom74
  %74 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %add76 = add nsw i32 %74, %c.334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end79, label %for.body71, !llvm.loop !20

for.end79:                                        ; preds = %for.body71, %middle.block113
  %add76.lcssa = phi i32 [ %72, %middle.block113 ], [ %add76, %for.body71 ]
  %75 = srem i32 %add76.lcssa, 7
  %76 = icmp eq i32 %75, 0
  %spec.select71 = select i1 %76, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.end89.sink.split:                              ; preds = %for.end79, %for.end57, %for.end33, %for.end, %for.cond68.preheader, %for.cond46.preheader, %for.cond22.preheader, %for.cond9.preheader
  %str.2.sink = phi ptr [ @str.7, %for.cond9.preheader ], [ @str.7, %for.cond22.preheader ], [ @str.7, %for.cond46.preheader ], [ @str.7, %for.cond68.preheader ], [ %spec.select, %for.end ], [ %spec.select69, %for.end33 ], [ %spec.select70, %for.end57 ], [ %spec.select71, %for.end79 ]
  %puts24 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  br label %if.end89

if.end89:                                         ; preds = %if.end89.sink.split, %if.else65, %if.else19
  %inc91 = add nuw nsw i32 %i.048, 1
  %77 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc91, %77
  br i1 %cmp, label %for.body, label %for.end92, !llvm.loop !21

for.end92:                                        ; preds = %if.end89, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11, !12, !13}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11, !12, !13}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
