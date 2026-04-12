; ModuleID = '<stdin>'
source_filename = "/tmp/tmpr4ut6v9k.cpp"
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
  %a = alloca [201 x i8], align 16
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 201, ptr noundef align 16 %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef align 16 %a, i64 noundef 201)
  %call2 = call i64 @strlen(ptr noundef %a) #6
  %conv = trunc i64 %call2 to i32
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef %p) #7
  store ptr %a, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #7
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %cmp = icmp sle i32 %0, %conv
  br i1 %cmp, label %while.body, label %while.end14

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !12
  %conv4 = sext i8 %2 to i32
  %cmp5 = icmp ne i32 %conv4, 32
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %while.body
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %if.else
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !12, !invariant.load !13
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %while.body11, label %while.end

while.body11:                                     ; preds = %while.cond8
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr12, ptr %p, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %inc13 = add nsw i32 %5, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !10
  br label %while.cond8, !llvm.loop !14

while.end:                                        ; preds = %while.cond8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  br label %while.cond, !llvm.loop !17

while.end14:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %p) #7
  call void @llvm.lifetime.end.p0(i64 noundef 201, ptr noundef %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !15, !16}
