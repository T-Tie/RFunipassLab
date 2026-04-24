; ModuleID = '<stdin>'
source_filename = "/tmp/tmpoaz5opal.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@switch.table.main = private unnamed_addr constant [10 x i32] [i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 4
@switch.table.main.1 = private unnamed_addr constant [10 x i32] [i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end62, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc64, %if.end62 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end65, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %c)
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %2 = load i32, ptr %c, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %1, %2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %b, align 4, !tbaa !5
  store i32 %1, ptr %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %.pr = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %3, 400
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %rem6 = srem i32 %3, 100
  %cmp7.not = icmp ne i32 %rem6, 0
  %4 = and i32 %3, 3
  %cmp9 = icmp eq i32 %4, 0
  %or.cond16 = and i1 %cmp7.not, %cmp9
  br i1 %or.cond16, label %if.then10, label %for.cond30thread-pre-split

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %smax32 = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %if.then10
  %5 = phi i32 [ %inc, %for.inc ], [ %.pr, %if.then10 ]
  %sum.1 = phi i32 [ %add, %for.inc ], [ 0, %if.then10 ]
  %exitcond33.not = icmp eq i32 %5, %smax32
  br i1 %exitcond33.not, label %if.end53, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %switch.tableidx = add i32 %5, -2
  %6 = icmp ult i32 %switch.tableidx, 10
  br i1 %6, label %switch.lookup, label %for.inc

switch.lookup:                                    ; preds = %for.body13
  %7 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main, i64 0, i64 %7
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13, %switch.lookup
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 31, %for.body13 ]
  %add = add nuw nsw i32 %sum.1, %.sink
  %inc = add i32 %5, 1
  store i32 %inc, ptr %b, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !9

for.cond30thread-pre-split:                       ; preds = %lor.lhs.false
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  br label %for.cond30

for.cond30:                                       ; preds = %for.cond30thread-pre-split, %for.inc50
  %8 = phi i32 [ %.pr, %for.cond30thread-pre-split ], [ %inc51, %for.inc50 ]
  %sum.4 = phi i32 [ 0, %for.cond30thread-pre-split ], [ %add35, %for.inc50 ]
  %exitcond.not = icmp eq i32 %8, %smax
  br i1 %exitcond.not, label %if.end53, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %switch.tableidx39 = add i32 %8, -2
  %9 = icmp ult i32 %switch.tableidx39, 10
  br i1 %9, label %switch.lookup38, label %for.inc50

switch.lookup38:                                  ; preds = %for.body32
  %10 = zext nneg i32 %switch.tableidx39 to i64
  %switch.gep40 = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main.1, i64 0, i64 %10
  %switch.load41 = load i32, ptr %switch.gep40, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body32, %switch.lookup38
  %.sink36 = phi i32 [ %switch.load41, %switch.lookup38 ], [ 31, %for.body32 ]
  %add35 = add nuw nsw i32 %sum.4, %.sink36
  %inc51 = add i32 %8, 1
  store i32 %inc51, ptr %b, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !12

if.end53:                                         ; preds = %for.cond30, %for.cond11
  %sum.3 = phi i32 [ %sum.1, %for.cond11 ], [ %sum.4, %for.cond30 ]
  %rem54 = srem i32 %sum.3, 7
  %cmp55 = icmp eq i32 %rem54, 0
  br i1 %cmp55, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.end53
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %if.end62

if.else59:                                        ; preds = %if.end53
  %call1.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then56
  %vtable.i23 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i24 = getelementptr i8, ptr %vtable.i23, i64 -24
  %vbase.offset.i25 = load i64, ptr %vbase.offset.ptr.i24, align 8
  %add.ptr.i26 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i25
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i26, i8 noundef signext 10)
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i27)
  %inc64 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end65:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #5
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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
