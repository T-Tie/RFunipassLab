; ModuleID = '<stdin>'
source_filename = "/tmp/tmpusrbpp50.cpp"
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
@.str = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [2 x double]], align 16
  %b = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 1600, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %b) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not.not, label %for.end, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond
  %2 = load double, ptr %b, align 16
  br label %for.cond18

for.end:                                          ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds nuw [100 x [2 x double]], ptr %a, i64 0, i64 %indvars.iv, i64 0
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5)
  %arrayidx5.1 = getelementptr inbounds nuw [100 x [2 x double]], ptr %a, i64 0, i64 %indvars.iv, i64 1
  %call6.1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5.1)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arrayidx5, i64 8
  %3 = load double, ptr %arrayidx9, align 8, !tbaa !9, !invariant.load !11
  %4 = load double, ptr %arrayidx5, align 16, !tbaa !9, !invariant.load !11
  %div = fdiv double %3, %4
  %arrayidx14 = getelementptr inbounds nuw [100 x double], ptr %b, i64 0, i64 %indvars.iv
  store double %div, ptr %arrayidx14, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body21
  %5 = phi i32 [ %0, %for.cond18.preheader ], [ %.pre, %for.body21 ]
  %indvars.iv16 = phi i64 [ 1, %for.cond18.preheader ], [ %indvars.iv.next17, %for.body21 ]
  %6 = sext i32 %5 to i64
  %cmp20.not.not = icmp slt i64 %indvars.iv16, %6
  br i1 %cmp20.not.not, label %for.body21, label %for.end43

for.body21:                                       ; preds = %for.cond18
  %arrayidx23 = getelementptr inbounds nuw [100 x double], ptr %b, i64 0, i64 %indvars.iv16
  %7 = load double, ptr %arrayidx23, align 8, !tbaa !9, !invariant.load !11
  %sub25 = fsub double %7, %2
  %cmp26 = fcmp ogt double %sub25, 5.000000e-02
  %sub32 = fsub double %2, %7
  %cmp33 = fcmp ogt double %sub32, 5.000000e-02
  %.str.1..str.2 = select i1 %cmp33, ptr @.str.1, ptr @.str.2
  %.str.1.sink = select i1 %cmp26, ptr @.str, ptr %.str.1..str.2
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(5) %.str.1.sink)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond18

for.end43:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 1600, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(5) %0) unnamed_addr #5 {
if.end40.exitStub:
  %call27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull dereferenceable(5) %0)
  %call28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call27, i8 noundef signext 10)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{}
