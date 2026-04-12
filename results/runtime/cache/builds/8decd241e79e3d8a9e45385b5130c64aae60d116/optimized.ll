; ModuleID = '<stdin>'
source_filename = "/tmp/tmphk6pcrbm.cpp"
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
@.str = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca double, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %add1 = add nsw i32 %3, 1
  %4 = zext i32 %add1 to i64
  %vla2 = alloca double, i64 %4, align 16
  %vla4 = alloca double, i64 %4, align 16
  %5 = shl nuw nsw i64 %1, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %vla, i8 0, i64 %5, i1 false)
  %6 = shl nuw nsw i64 %4, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %vla2, i8 0, i64 %6, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %vla4, i8 0, i64 %6, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = phi i32 [ %.pre, %for.inc ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %8 = sext i32 %7 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %8
  br i1 %cmp.not, label %for.cond15.preheader, label %for.inc

for.cond15.preheader:                             ; preds = %for.cond
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %vla4, i64 8
  br label %for.cond15

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw double, ptr %vla, i64 %indvars.iv
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx)
  %arrayidx7 = getelementptr inbounds nuw double, ptr %vla2, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx7)
  %9 = load double, ptr %arrayidx7, align 8, !tbaa !9
  %10 = load double, ptr %arrayidx, align 8, !tbaa !9
  %div = fdiv double %9, %10
  %arrayidx14 = getelementptr inbounds nuw double, ptr %vla4, i64 %indvars.iv
  store double %div, ptr %arrayidx14, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body17
  %11 = phi i32 [ %7, %for.cond15.preheader ], [ %.pre15, %for.body17 ]
  %indvars.iv12 = phi i64 [ 2, %for.cond15.preheader ], [ %indvars.iv.next13, %for.body17 ]
  %12 = sext i32 %11 to i64
  %cmp16.not = icmp sgt i64 %indvars.iv12, %12
  br i1 %cmp16.not, label %for.end38, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw double, ptr %vla4, i64 %indvars.iv12
  %13 = load double, ptr %arrayidx19, align 8, !tbaa !9
  %14 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %sub = fsub double %13, %14
  %cmp21 = fcmp olt double %sub, -5.000000e-02
  %cmp28 = fcmp ogt double %sub, 5.000000e-02
  %.str.1..str.2 = select i1 %cmp28, ptr @.str.1, ptr @.str.2
  %.str.sink = select i1 %cmp21, ptr @.str, ptr %.str.1..str.2
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str.sink)
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call22, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %.pre15 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !14

for.end38:                                        ; preds = %for.cond15
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
