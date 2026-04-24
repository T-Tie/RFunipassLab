; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9exdzixw.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 %a) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %a, i64 noundef 10000)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %conv = trunc i64 %call2 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %num.0 = phi i32 [ 0, %entry ], [ %num.1, %for.inc25 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc.i7, %for.inc25 ]
  %idx.ext = sext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  switch i8 %0, label %for.inc25 [
    i8 0, label %for.cond29.preheader
    i8 32, label %land.lhs.true
  ]

for.cond29.preheader:                             ; preds = %for.cond
  %cmp31 = icmp sge i32 %num.0, %conv
  call void @llvm.assume(i1 noundef %cmp31)
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %a) #9
  ret i32 0

land.lhs.true:                                    ; preds = %for.cond
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 1
  %1 = load i8, ptr %add.ptr11, align 1, !tbaa !5, !invariant.load !8
  %cmp13 = icmp eq i8 %1, 32
  br i1 %cmp13, label %for.cond14.preheader, label %for.inc25

for.cond14.preheader:                             ; preds = %land.lhs.true
  %2 = xor i32 %num.0, -1
  %sub15 = add i32 %2, %conv
  %smax = call i32 @llvm.smax.i32(i32 noundef %i.0, i32 %sub15)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc
  %indvars.iv = phi i64 [ %idx.ext, %for.cond14.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond14
  %add.ptr20 = getelementptr inbounds i8, ptr %a, i64 %indvars.iv
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %add.ptr20, i64 1
  %3 = load i8, ptr %add.ptr21, align 1, !tbaa !5, !invariant.load !8
  store i8 %3, ptr %add.ptr20, align 1, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond14

for.end:                                          ; preds = %for.cond14
  %dec = add nsw i32 %i.0, -1
  %inc.i6 = add nsw i32 %num.0, 1
  br label %for.inc25

for.inc25:                                        ; preds = %for.cond, %land.lhs.true, %for.end
  %num.1 = phi i32 [ %inc.i6, %for.end ], [ %num.0, %land.lhs.true ], [ %num.0, %for.cond ]
  %i.1 = phi i32 [ %dec, %for.end ], [ %i.0, %land.lhs.true ], [ %i.0, %for.cond ]
  %inc.i7 = add nsw i32 %i.1, 1
  br label %for.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
