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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %c) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end53, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc64, %if.end53 ]
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
  %.pr.i = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %3, 400
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %rem6 = srem i32 %3, 100
  %cmp7 = icmp ne i32 %rem6, 0
  %4 = and i32 %3, 3
  %cmp9 = icmp eq i32 %4, 0
  %or.cond = and i1 %cmp7, %cmp9
  br i1 %or.cond, label %if.then10, label %if.else29

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %smax21 = call i32 @llvm.smax.i32(i32 %.pr.i, i32 %2)
  br label %for.cond11.i

for.cond11.i:                                     ; preds = %for.inc.i, %if.then10
  %sum.2 = phi i32 [ 0, %if.then10 ], [ %add26.i, %for.inc.i ]
  %5 = phi i32 [ %.pr.i, %if.then10 ], [ %inc.i, %for.inc.i ]
  %exitcond22.not = icmp eq i32 %5, %smax21
  br i1 %exitcond22.not, label %if.end53, label %for.body13.i

for.body13.i:                                     ; preds = %for.cond11.i
  switch i32 %5, label %if.else25.i [
    i32 2, label %for.inc.i
    i32 4, label %for.inc.fold.split.i
    i32 6, label %for.inc.fold.split.i
    i32 9, label %for.inc.fold.split.i
    i32 11, label %for.inc.fold.split.i
  ]

if.else25.i:                                      ; preds = %for.body13.i
  br label %for.inc.i

for.inc.fold.split.i:                             ; preds = %for.body13.i, %for.body13.i, %for.body13.i, %for.body13.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.fold.split.i, %if.else25.i, %for.body13.i
  %.sink1.sink.i = phi i32 [ 29, %for.body13.i ], [ 31, %if.else25.i ], [ 30, %for.inc.fold.split.i ]
  %add26.i = add nuw nsw i32 %.sink1.sink.i, %sum.2
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %b, align 4, !tbaa !5, !noalias !9
  br label %for.cond11.i, !llvm.loop !12

if.else29:                                        ; preds = %lor.lhs.false
  %smax = call i32 @llvm.smax.i32(i32 %.pr.i, i32 %2)
  br label %for.cond11.i6

for.cond11.i6:                                    ; preds = %for.inc.i10, %if.else29
  %sum.3 = phi i32 [ 0, %if.else29 ], [ %add26.i12, %for.inc.i10 ]
  %6 = phi i32 [ %.pr.i, %if.else29 ], [ %inc.i13, %for.inc.i10 ]
  %exitcond.not = icmp eq i32 %6, %smax
  br i1 %exitcond.not, label %if.end53, label %for.body13.i8

for.body13.i8:                                    ; preds = %for.cond11.i6
  switch i32 %6, label %if.else25.i14 [
    i32 2, label %for.inc.i10
    i32 4, label %for.inc.fold.split.i9
    i32 6, label %for.inc.fold.split.i9
    i32 9, label %for.inc.fold.split.i9
    i32 11, label %for.inc.fold.split.i9
  ]

if.else25.i14:                                    ; preds = %for.body13.i8
  br label %for.inc.i10

for.inc.fold.split.i9:                            ; preds = %for.body13.i8, %for.body13.i8, %for.body13.i8, %for.body13.i8
  br label %for.inc.i10

for.inc.i10:                                      ; preds = %for.inc.fold.split.i9, %if.else25.i14, %for.body13.i8
  %.sink1.sink.i11 = phi i32 [ 28, %for.body13.i8 ], [ 31, %if.else25.i14 ], [ 30, %for.inc.fold.split.i9 ]
  %add26.i12 = add nuw nsw i32 %.sink1.sink.i11, %sum.3
  %inc.i13 = add i32 %6, 1
  store i32 %inc.i13, ptr %b, align 4, !tbaa !5, !noalias !15
  br label %for.cond11.i6, !llvm.loop !12

if.end53:                                         ; preds = %for.cond11.i6, %for.cond11.i
  %sum.1 = phi i32 [ %sum.2, %for.cond11.i ], [ %sum.3, %for.cond11.i6 ]
  %rem54 = srem i32 %sum.1, 7
  %cmp55 = icmp eq i32 %rem54, 0
  %.str..str.1 = select i1 %cmp55, ptr @.str, ptr @.str.1
  %call57.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(3) %.str..str.1)
  %call58.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call57.i, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc64 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !18

for.end65:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"outlined_ir_func_0: argument 0"}
!11 = distinct !{!11, !"outlined_ir_func_0"}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"outlined_ir_func_0: argument 0"}
!17 = distinct !{!17, !"outlined_ir_func_0"}
!18 = distinct !{!18, !13, !14}
