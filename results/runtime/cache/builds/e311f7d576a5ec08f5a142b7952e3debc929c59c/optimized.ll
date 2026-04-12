; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqicj23ta.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@__const.main.a = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.b = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %entry
  %0 = phi i32 [ %dec, %if.end62 ], [ %.pr, %entry ]
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #5
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %m1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %1, %2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 %2, ptr %m1, align 4, !tbaa !5
  store i32 %1, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %while.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %while.body ]
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %5, 400
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %rem6 = srem i32 %5, 100
  %cmp7.not = icmp ne i32 %rem6, 0
  %6 = and i32 %5, 3
  %cmp9 = icmp eq i32 %6, 0
  %or.cond = and i1 %cmp7.not, %cmp9
  br i1 %or.cond, label %if.then10, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %lor.lhs.false
  %7 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  %smax = add nsw i32 %7, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond32

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %8 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  %smax61 = add nsw i32 %8, -1
  %wide.trip.count62 = zext nneg i32 %smax61 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then10
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body ], [ 0, %if.then10 ]
  %M.0 = phi i32 [ %add, %for.body ], [ 0, %if.then10 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63.not, label %for.cond12.preheader, label %for.body

for.cond12.preheader:                             ; preds = %for.cond
  %9 = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %smax67 = add nsw i32 %9, -1
  %wide.trip.count68 = zext nneg i32 %smax67 to i64
  br label %for.cond12

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [12 x i32], ptr @__const.main.b, i64 0, i64 %indvars.iv58
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %10, %M.0
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond, !llvm.loop !9

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv64 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next65, %for.body15 ]
  %N.0 = phi i32 [ 0, %for.cond12.preheader ], [ %add18, %for.body15 ]
  %exitcond69.not = icmp eq i64 %indvars.iv64, %wide.trip.count68
  br i1 %exitcond69.not, label %for.end21, label %for.body15

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds nuw [12 x i32], ptr @__const.main.b, i64 0, i64 %indvars.iv64
  %11 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add18 = add nsw i32 %11, %N.0
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond12, !llvm.loop !12

for.end21:                                        ; preds = %for.cond12
  %sub22 = sub nsw i32 %N.0, %M.0
  %rem23 = srem i32 %sub22, 7
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.end21
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %if.end62

if.else:                                          ; preds = %for.end21
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %if.end62

for.cond32:                                       ; preds = %for.cond32.preheader, %for.body35
  %indvars.iv = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next, %for.body35 ]
  %M.1 = phi i32 [ 0, %for.cond32.preheader ], [ %add38, %for.body35 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond42.preheader, label %for.body35

for.cond42.preheader:                             ; preds = %for.cond32
  %12 = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %smax55 = add nsw i32 %12, -1
  %wide.trip.count56 = zext nneg i32 %smax55 to i64
  br label %for.cond42

for.body35:                                       ; preds = %for.cond32
  %arrayidx37 = getelementptr inbounds nuw [12 x i32], ptr @__const.main.a, i64 0, i64 %indvars.iv
  %13 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %add38 = add nsw i32 %13, %M.1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond32, !llvm.loop !13

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body45
  %indvars.iv52 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next53, %for.body45 ]
  %N.1 = phi i32 [ 0, %for.cond42.preheader ], [ %add48, %for.body45 ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end51, label %for.body45

for.body45:                                       ; preds = %for.cond42
  %arrayidx47 = getelementptr inbounds nuw [12 x i32], ptr @__const.main.a, i64 0, i64 %indvars.iv52
  %14 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %14, %N.1
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond42, !llvm.loop !14

for.end51:                                        ; preds = %for.cond42
  %sub52 = sub nsw i32 %N.1, %M.1
  %rem53 = srem i32 %sub52, 7
  %cmp54 = icmp eq i32 %rem53, 0
  br i1 %cmp54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %for.end51
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %if.end62

if.else58:                                        ; preds = %for.end51
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.else58, %if.then25, %if.else
  %vtable.i37 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i38 = getelementptr i8, ptr %vtable.i37, i64 -24
  %vbase.offset.i39 = load i64, ptr %vbase.offset.ptr.i38, align 8
  %add.ptr.i40 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i39
  %call.i41 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i40, i8 noundef signext 10)
  %call1.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i41)
  %call.i.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i42)
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = distinct !{!17, !10, !11}
